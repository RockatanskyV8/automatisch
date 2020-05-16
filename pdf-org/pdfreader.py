import PyPDF2

def checkSize(file):
    PDF = PyPDF2.PdfFileReader( file, 'rb' )
    PAGE_NUM = PDF.numPages

    if (PAGE_NUM < 3):
        print('small')
    else:
        print('big')


