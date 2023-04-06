import PyPDF2
import csv
import regex as re

f = open('docs/K_385-2021.pdf', 'rb')
pdf_reader = PyPDF2.PdfReader(f)
page_text = ''
for page in pdf_reader.pages:
    page_text += page.extract_text()
page_one = pdf_reader.pages[0]
page_one_text = page_one.extract_text()

sud = re.search(r'Osnovni Sud u [a-zA-Z]+', page_text).group()
poslovni_broj = re.search(r'K [0-9]{3}/[0-9]{4}', page_text).group()
sudija = re.search(r'sudija [\w]+\s[\w-]+', page_text).group()
tuzilac = re.search(r'optu ž be [\w ]+\s[\w- ]+', page_text).group()
okrivljeni = re.search(r'okrivljenih [\w]\.+\s[\w]\.+ i [\w]\.+\s[\w]\.+|okrivljenog [\w]\.+\s[\w]\.',
                       page_text).group()
okrivljeni = re.findall(r'[\w]\.+\s[\w]\.+', okrivljeni)
krivicnoDelo_ZOSRA = re.search(r'č l.+ Zakona o slatkovodnom ribarstvu i akvakulturi', page_text).group()
krivicnoDeloKZ = re.search(r'djelo nezakonit ribolov iz č l. [0-9]{0,3} st. [0-9]+', page_text).group()
broj_riba = re.search(r'prilikom ulovili [0-9]+', page_text).group()
primenjeni_propisi_KZ = re.search(r'te odredbi ([\s]?(č l.)? [0-9]+[ st. [0-9]+]?[, i \s]?)+Krivi č nog zakonika Crne Gore, ', page_text).group()
primenjeni_propisi_ZKP = re.search(r'kao i odredbi ([\s]?(č l.)? [0-9]+[ st. [0-9]+]?[, i \s]?)+Zakonika o krivi č nom postupku,',
                                   page_text).group()
primenjeni_propisi = primenjeni_propisi_KZ.replace('te odredbi ', '').replace('Krivi č nog zakonika Crne Gore', 'KZ') +\
                     primenjeni_propisi_ZKP.replace('kao i odredbi ', '').replace('Zakonika o krivi č nom postupku,', 'ZOKP')
primenjeni_propisi = primenjeni_propisi.replace('č l.', 'čl.')
#Krivi č nog zakonika Crne Gore, ' r'kao i odredbi [ č l. [0-9]+[, ]?[ i ]?[\s]?]+ Zakonika o krivi č nom postupku,
print(sudija)
header = ['id', 'sud', 'poslovniBroj', 'sudija', 'tuzilac', 'okrivljeni', 'krivicnoDeloZOSRA', 'krivicnoDeloKZ',
          'brojRiba', 'vrstaPresude', 'primenjeniPropisi']
data = ['1', sud, poslovni_broj, sudija.replace('sudija ', ''), tuzilac.replace('optu ž be ', ''), okrivljeni,
        krivicnoDelo_ZOSRA.replace(' Zakona o slatkovodnom ribarstvu i akvakulturi', ''),
        krivicnoDeloKZ.replace('djelo nezakonit ribolov iz ', ''),
        broj_riba.replace('prilikom ulovili ', '').replace('jedan', '1'),
        'osudjujuca', primenjeni_propisi]

with open('judgements.csv', 'w', encoding='UTF8') as f:
    writer = csv.writer(f)

    # write the header
    writer.writerow(header)

    # write the data
    writer.writerow(data)
