# Url where the data is located
fileUrl <- "http://www.amstat.org/publications/jse/datasets/homes76.dat.txt"
# Set working directory to where you want to save the file
setwd("IntroductionToDataScience")
# If homes76.txt does not exist then download it
if (!file.exists("homes76.txt")) {
            download.file(fileUrl, destfile="homes76.txt")}
# Read data
hdata <- read.table("homes76.txt", header=T)

# Rename columns
colnames(hdata) <- c('id', 'Price', 'Size', 'Lot', 'Bath', 'Bed', 'BathBed', 'Year', 
                 'Age','Agesq', 'Garage', 'Status', 'Active', 'Elem', 
                 'Edison Elementary', 'Harris Elementary', 'Adams Elementary', 
                 'Crest Elementary', 'Parker Elementary')

p <- ggplot(data=hdata,aes(x=Price,y=Size)) 
p + geom_point() + geom_smooth(method='loess') + 
            xlab("Price, Thousands of Dollars") + 
            ylab("Size, Thousands of Square Feet")

