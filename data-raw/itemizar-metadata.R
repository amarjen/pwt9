items <- read.csv2('./data-raw/pwt90-metadata.csv', sep=',')

variables <- as.vector(items[,1])
descripts <- as.vector(items[,2])

metadata <- c()
for (i in seq(62)) {
    if(nchar(variables[i])>0 && nchar(descripts[i])==0) {
        metadata[i] <- paste("#'   \\strong{",variables[i],"}",sep='')
    }
    else {metadata[i] <- paste("#'   \\item{",variables[i],"}{",descripts[i],"}",sep='')}
}

write(metadata, file='./data-raw/metadata.txt')
