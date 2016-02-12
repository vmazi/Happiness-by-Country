happiness<-read.csv("CHALLENGE4H.csv")
country<-happiness$COUNTRY




SE.names <- c("Albania","Bosnia and Herzegovina","Croatia","Greece","Italy","Macedonia","Malta","Montenegro","Portugal","Serbia","Slovenia","Spain")
NE.names <- c("Denmark","Estonia","Finland","Iceland","Ireland","Norway","Sweden","United Kingdom","Lithuania","Latvia")
WE.names<-c("Austria","Belgium","France","Germany","Liechenstien","Luxemborg","Netherlands","Switzerland")
EE.names<-c("Belarus","Bulgaria","Czech Republic","Hungary","Moldova","Poland","Romania","Russia","Slovakia","Ukraine")
Afr.names <- c("Algeria","Cameroon","Chad","Egypt","Ethiopia","Guinea","Kenya","Mozambique","Niger","South Africa","Tanzania","Uganda")
SEAsia.names<-c("Brunei","Cambodia","Indonesia","Laos","Malaysia","Myanmar","Philippines","Singapore","Thailand","Vietnam")
EAsia.names<-c("China","Hong Kong","Japan","South Korea","Mongolia","Taiwan","India")
MiddleEast.names<-c("Bahrain","Cyprus","Egypt","Iran","Iraq","Israel","Jordan","Kuwait","Lebanon","Oman","Qatar","Saudi Arabia","Syria","Turkey","United Arab Emirates","Yemen")
NA.names<-c("Canada","United States","Mexico")
CA.names<-c("Costa Rica","El Salvador","Guatemala","Honduras","Nicaragua","Panama")
SA.names<-c("Brazil","Colombia","Argentina","Peru","Venezuela","Chile","Ecuador","Bolivia","Paraguay","Uruguay","Suriname")

SE<-happiness[happiness$COUNTRY %in% SE.names,]
EE <- happiness[happiness$COUNTRY %in% EE.names,]
NE <- happiness[happiness$COUNTRY %in% NE.names,]
Afr <- happiness[happiness$COUNTRY %in% Afr.names,]
WE <- happiness[happiness$COUNTRY %in% WE.names,]
SEAsia <- happiness[happiness$COUNTRY %in% SEAsia.names,]
EAsia <- happiness[happiness$COUNTRY %in% EAsia.names,]
MiddleEast<- happiness[happiness$COUNTRY %in% MiddleEast.names,]
NAmerica<- happiness[happiness$COUNTRY %in% NA.names,]
CA<- happiness[happiness$COUNTRY %in% CA.names,]
SA<- happiness[happiness$COUNTRY %in% SA.names,]

Averagehappiness<-c(mean(NE$HAPPINESS),mean(Afr$HAPPINESS),mean(SE$HAPPINESS),mean(EE$HAPPINESS),mean(WE$HAPPINESS),mean(SEAsia$HAPPINESS),mean(EAsia$HAPPINESS),mean(MiddleEast$HAPPINESS),mean(NAmerica$HAPPINESS),mean(CA$HAPPINESS),mean(SA$HAPPINESS))
Regions<-c("South Europe","East Europe","North Europe","West Europe","Africa","South East Asia","East Asia","Middle East","North America","Central America","South America" )
boxplot(SE$HAPPINESS,EE$HAPPINESS,NE$HAPPINESS,WE$HAPPINESS,Afr$HAPPINESS,SEAsia$HAPPINESS,EAsia$HAPPINESS,MiddleEast$HAPPINESS,NAmerica$HAPPINESS,CA$HAPPINESS,SA$HAPPINESS, names = Regions)



