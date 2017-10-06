library(aws.polly)
library(ari)
library(webshot)
library(tuneR)
list_voices()
my_file <- "datacamp-audition-gams-2017-10-02-NR"
rmarkdown::render(paste0(my_file,".Rmd"))
system(paste("sed -i -e \'s/\"shower list\"/\"shower full\"/\'", 
             paste0(my_file, ".html")))
ari_narrate(paste0(my_file,".Rmd"), paste0(my_file, ".html"),
            voice="Kendra",
            output = paste0(my_file, ".mp4"))



library(tuneR)
setWavPlayer('/usr/bin/afplay')
