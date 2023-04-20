from multilingual_pdf2text.pdf2text import PDF2Text
from multilingual_pdf2text.models.document_model.document import Document
import PyPDF2
import csv
import regex as re
import os


def extract_text(content):
    sud = re.search(r'Osnovni Sud u [\w]+', content).group()
    poslovni_broj = re.search(r'K\.[\s]?br\.[\s]?[0-9]{0,3}/[0-9]{2,4}', content).group()
    sudija = re.search(r'(sudija|po sudiji)( pojedinac)? [\w]+\s[\w-]+', content).group()
    tuzilac_pattern = re.search(r'(po optužnom(\n| )?predlogu (ODT(-a)?|Osnovnog državnog tužilaštva) (u )?[\w]+)', content)
    if tuzilac_pattern is None:
        tuzilac = ''
    else:
        tuzilac = tuzilac_pattern.group()
    okrivljeni = re.search(r'okrivljenih [\w]\.+\s[\w]\.+ i [\w]\.+\s[\w]\.+|okrivljenog [\w]\.+\s[\w]\.',
                           content).group()
    krivicnoDelo_ZOSRA = re.search(r'(((suprotno|zabranjeno|donesene|protivno)( zabrani propisanoj)?'
                                   r'( shodno)?( odredbi| odredbama)?))? (čl\.|član(a|u)?)?.{0,20} Zakona o slatkovodnom ribarstvu[\s,]?(i akvakulturi )?',
                                   content).group()

    krivicnoDeloKZ = re.search(r'djelo nezakonit ribolov iz (čl\.|člana)[\s]?[0-9]{0,3}[.]? (st\.|stav)[\s]?[0-9]+', content).group()
    broj_riba_regex = re.search(r'(prilikom (su izlovili|ulovili)( oko | )?[0-9]+)|((uhvatio|u?lovio) [0-9]+|.{5,20} komada rib[eu])', content)
    if broj_riba_regex is None:
        broj_riba = '0'
    else:
        broj_riba = broj_riba_regex.group()

    primenjeni_propisi = re.search(
        r'((te )?odredbi .{0,70} ((Krivičnog zakonika Crne Gore)|(KZ CG))(, kao)? i odredbi .{0,30} (Zakonika o krivičnom postupku|ZOKP|ZKP-a)(,)?( )?)|'
        r'((te|,)? primjenom (članova:|člana|čl.) .{0,70} (KZCG(\.)?|Krivičnog zakonika Crne Gore)(\s|, te čl. | i ).{0,30} (Zakonika o krivičnom postupku|ZKP)(, | ))|'
        r'((primjenom )(citirane|citiranih|citiranog) (zakonske odredbe|(zakonskih|zakonskog) (propisa|odredbi))(, te| i|, odredbi iz) .{0,70} Krivičnog zakonika (Crne Gore|\(Kz-a\))'
        r'(, te( odredbi)?|(,)? i)( odredbi iz)? .{0,30} Zakonika o krivičnom postupku(, )?)',
        content).group()
    sudija = sudija.replace('sudija ', '').replace('po sudiji ', '').replace('pojedinac ', '')

    primenjeni_propisi = primenjeni_propisi.replace('te odredbi ', '').replace('Krivičnog zakonika Crne Gore', 'KZ') \
        .replace('kao i odredbi ', '').replace('Zakonika o krivičnom postupku,', 'ZOKP').replace('ZKP, ', 'ZOKP') \
        .replace('zakonske odredbe, te ', '').replace('primjenom citirane ', '').replace('primjenom citirane ', '').replace(' primjenom ', '')\
        .replace('Zakonika o krivičnom postupku', 'ZOKP') \
        .replace('primjenom citiranog zakonskog propisa i ', '').replace('primjenom citiranih zakonskih odredbi, odredbi ', '')\
        .replace('Krivičnog zakonika (Kz-a)', 'KZ').replace('ZKP-a ', 'ZOKP').replace('i odredbi iz', 'i').replace('KZ CG', 'KZ')\
        .replace('primjenom citiranih zakonskih propisa, te ', '').replace('odredbi iz ', '').replace('odredbi ', '')\
        .replace('te', '').replace('iz ', '').replace('KZ, i', 'KZ i').replace('KZ,', 'KZ i').replace('KZCG','KZ') \
        .replace('stav', 'st.').replace('tačka', 'tač.').replace(', KZ', ' KZ').replace('člana', 'čl.').replace('članova', 'čl.')\
        .replace(':', '').replace('  čl.', ' čl.')
    prop = primenjeni_propisi.split('KZ i ')
    kz_part = prop[0].replace(',čl.', 'čl.').replace(', ', ',čl. ').replace(' i', ',čl.').replace('čl. čl.', 'čl.').replace(',čl.', ' KZ,čl.')
    zokp_part = prop[1].replace(',čl.', 'čl.').replace(', ', ',čl. ').replace(' i', ',čl.').replace('čl. čl.', 'čl.').\
        replace('čl.2', 'čl. 2').replace(',čl.', ' ZOKP,čl.')
    print(zokp_part)
    primenjeni_propisi = kz_part + 'KZ,' + zokp_part

    krivicnoDelo_ZOSRA = krivicnoDelo_ZOSRA.replace(' Zakona o slatkovodnom ribarstvu i akvakulturi', '').replace('zabranjeno', '')\
        .replace('protivno', '').replace(' Zakona o slatkovodnom ribarstvu', '').replace('odredbi ', '').replace('člana', 'čl.').\
        replace('donesene shodno odredbi člana ', '').replace('shodno ', '').replace('odredbama ', '')\
        .replace('suprotno ', '').replace('suprotno zabrani propisanoj ', '').replace('8/17) i ', '').replace('donesene ', '').\
        replace('zabrani propisanoj ', '').replace('članom', 'čl.').replace('članu', 'čl.').replace(' čl.', 'čl.').replace('  čl.', 'čl.').\
        replace('stav', 'st.').replace('tačka', 'tač.').replace(',','')

    krivicnoDeloKZ = krivicnoDeloKZ.replace('djelo nezakonit ribolov iz ', '').replace('člana', 'čl.').replace('stav', 'st.').replace(
        'tačka', 'tač.')
    broj_riba = broj_riba.replace('prilikom su izlovili ', '').replace('prilikom ulovili ', '').replace('uhvatio ', '')\
    .replace('komada ribe', '').replace('komada ribi', '').replace('komada riba', '').replace('jedan', '1')\
    .replace('lovio ', '').replace('i sa njom ', '').replace(' ulovili ', '').replace('oko ', '').replace('dvadeset sedam', '27') \
    .replace('su izlovili ', '').replace('petnaest ', '15').replace(',devetnaest ', '19').replace('rilikom su', '') \
    .replace('struju, sonda i dva ', '2').replace(' ', '')

    data = [0, sud, poslovni_broj, sudija, tuzilac.replace('po optužnom predlogu ', ''),
            okrivljeni.replace('okrivljenih ', '').replace('okrivljenog ', '').replace('okrivljenih ', ', '),
            krivicnoDelo_ZOSRA, krivicnoDeloKZ, broj_riba,'osudjujuca', primenjeni_propisi]
    return data


header = ['id', 'sud', 'poslovniBroj', 'sudija', 'tuzilac', 'okrivljeni', 'krivicnoDeloZOSRA', 'krivicnoDeloKZ',
          'brojRiba', 'vrstaPresude', 'primenjeniPropisi']
with open('docs/judgements.csv', 'w', encoding='UTF8',) as output:
    writer = csv.writer(output,  delimiter=";")
    writer.writerow(header)
    i = 1
    for filename in os.listdir('docs/'):
        f = os.path.join('docs/', filename)
        # checking if it is a file
        if os.path.isfile(f) and f.endswith('.txt'):
            with open(f, encoding="utf-8") as f:
                content = f.read()
                content = content.replace('\n', ' ')
                data = extract_text(content)
                data[0] = i
                writer.writerow(data)
                i += 1

# pdf_document = Document(
#     document_path='docs/K_29-2020.pdf',
#     language='srp_latn',
#     page_numbers=[1]
# )
#pdf2text = PDF2Text(document=pdf_document)
#content = pdf2text.extract()
#print(content)
#content = content[0]['text']
#print(content)
#with open('docs/K_3-2020.txt', 'w', encoding="utf-8") as f:
#    f.write(content)



