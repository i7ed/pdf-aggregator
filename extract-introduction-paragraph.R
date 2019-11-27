# example to laod text from PDF file
#


# install.packages('pdftools')
library(pdftools)


path.RAW = '~/Downloads/'
file.list = file.path(path.RAW,
                      dir(path.RAW, 
                          pattern='^\\d{4}.*\\.pdf$', 
                          recursive = TRUE))

q = pdf_text(file.list[1])

# find individual sentences
q1 = unlist(strsplit(q,'\n'))

# find introduction paragraph
m = grep('introduction',q1,ignore.case = TRUE)[1]
paste(q1[(m+1):(m+4)],collapse=' ') 
