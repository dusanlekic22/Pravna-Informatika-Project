import PyPDF2

f = open('docs/Zakon_o_slatkovodnom_ribarstvu_i_akvakulturi.pdf', 'rb')
pdf_reader = PyPDF2.PdfReader(f)
#the following lines of code will output the number of pages of the pdf
print(len(pdf_reader.pages))
#getPage()reads the text of a specific page. Here the parameter 0 indicates the first page of the pdf
page_one = pdf_reader.pages[0]
page_one_text = page_one.extract_text()

pdf_writer = PyPDF2.PdfWriter()
#addPage() adds the content of first_page to a new page
pdf_writer.add_page(page_one)
#The open() function with "wb" mode creates a document named "Some_New_Doc.pdf" to the directory
pdf_output = open("Some_New_Doc.pdf", "wb")
#finally we will get a pdf file with the contents of the first page of the previous pdf by write() function
pdf_writer.write(pdf_output)