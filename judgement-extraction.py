from multilingual_pdf2text.pdf2text import PDF2Text
from multilingual_pdf2text.models.document_model.document import Document
import PyPDF2
import csv
import regex as re

pdf_document = Document(
    document_path='docs/K_29-2020.pdf',
    language='srp_latn',
    page_numbers=[1]
)
#pdf2text = PDF2Text(document=pdf_document)
#content = pdf2text.extract()
#print(content)
#content = content[0]['text']
#print(content)
#with open('docs/K_3-2020.txt', 'w', encoding="utf-8") as f:
#    f.write(content)
with open('docs/K_29-2020.txt', encoding="utf-8") as f:
    content = f.read()
content = content.replace('\n', ' ')
print(content)
page_text = ''
sud = re.search(r'Osnovni Sud u [a-zA-Z]+', content).group()
poslovni_broj = re.search(r'K [0-9]{0,3}/[0-9]{4}', content).group()
sudija = re.search(r'sudija [\w]+\s[\w-]+', content).group()
tuzilac = re.search(r'po optužnom(\n| )?predlogu (ODT|Osnovnog državnog tužilaštva) u [\w]+', content).group()
okrivljeni = re.search(r'okrivljenih [\w]\.+\s[\w]\.+ i [\w]\.+\s[\w]\.+|okrivljenog [\w]\.+\s[\w]\.',
                       content).group()
krivicnoDelo_ZOSRA = re.search(r'zabranjeno|protivno čl.+ Zakona o slatkovodnom ribarstvu (i akvakulturi )?', content).group()
krivicnoDeloKZ = re.search(r'djelo nezakonit ribolov iz čl.[\s]?[0-9]{0,3}[.]? st.[\s]?[0-9]+', content).group()
broj_riba = re.search(r'prilikom ulovili [0-9]*|uhvatio [0-9]+ komada ribe', content).group()
primenjeni_propisi = re.search(r'(te odredbi .+ Krivičnog zakonika Crne Gore, kao i odredbi .+ (Zakonika o krivičnom postupku|ZOKP), )|'
                                  r'(te primjenom (članova:|člana) .+ KZCG. .+ ZKP(, | ))|'
                               r'(zakonske odredbe, te .{0,70} Krivičnog zakonika Crne Gore, te odredbi .{0,30} Zakonika o krivičnom postupku, )', content).group()
primenjeni_propisi = primenjeni_propisi.replace('te odredbi ', '').replace('Krivičnog zakonika Crne Gore', 'KZ')\
    .replace('kao i odredbi ', '').replace('Zakonika o krivičnom postupku,', 'ZOKP').replace('ZKP, ', 'ZOKP')
#Krivi č nog zakonika Crne Gore, ' r'kao i odredbi [ č l. [0-9]+[, ]?[ i ]?[\s]?]+ Zakonika o krivi č nom postupku,
print(sudija)
header = ['id', 'sud', 'poslovniBroj', 'sudija', 'tuzilac', 'okrivljeni', 'krivicnoDeloZOSRA', 'krivicnoDeloKZ',
          'brojRiba', 'vrstaPresude', 'primenjeniPropisi']
data = ['2', sud, poslovni_broj, sudija.replace('sudija ', ''), tuzilac.replace('po optužnom predlogu ', ''),
        okrivljeni.replace('okrivljenih ', '').replace('okrivljenog ', '').replace('okrivljenih ', ', '),
        krivicnoDelo_ZOSRA.replace(' Zakona o slatkovodnom ribarstvu i akvakulturi', ''),
        krivicnoDeloKZ.replace('djelo nezakonit ribolov iz ', ''),
        broj_riba.replace('prilikom ulovili ', '').replace('jedan', '1').replace('uhvatio ', '').replace('komada ribe', ''),
        'osudjujuca', primenjeni_propisi]

with open('docs/judgements.csv', 'a', encoding='UTF8') as f:
    writer = csv.writer(f)

    # write the data
    writer.writerow(data)
