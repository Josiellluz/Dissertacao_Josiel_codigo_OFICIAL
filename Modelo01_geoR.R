
library(geoR)

library(dplyr)

dados.final.44 #Contagens das estações pluviométricas.

dados <- dados.final.44

#Retirando a estação que queremos interpolar e selecionando o ano.

#Para exemplificar vamos interpolar a primeira estação para no ano de 2001.

dados <- dados[441:484,] %>% slice(-c(1))

dados

#Organizando os dados num data frame com as coordenadas, altitude e contagens.

coord01 <- c(dados[1:43,5],dados[1:43,4])
coord01

coord <- matrix(coord01,nrow=43,ncol=2)
coord

lista01 <- data.frame(
  coord=coord,
  dados=c(dados[1:43,3])+c(rep(0.5,43)), alt=dados[1:43,7])

lista01

#Transformando o data frame no objeto geodata.

dados <- as.geodata(obj=lista01, covar.col = c(1,2,4))

dados

#Montando o modelo empírico do variograma

ca20.v <- variog(dados, uvec=seq(0,4,by=0.2), option=c("bin"), pairs.min = 10, bin.cloud=T)

plot(ca20.v)


#Podemos definir os parâmetros iniciais interativamente por meio dos comandos a seguir.

#dev.new()

#eyefit_exp <- eyefit(ca20.v)

#Ajustando um modelo de variograma paramétrico

josi_fit <- variofit(ca20.v, ini.cov.pars = c(29.7,1.33), nugget=11.5)

#Ajustanto o modelo

precip02 <- likfit(dados, ini=josi_fit, fix.kappa=F, fix.nugget=T, fix.lambda=F, fix.psiA=F, fix.psiR=F)

summary(precip02)

#Definindo as coordenadas do local aonde será interpolado.

#est01

a <- c(-36.5564)
b <- c(-10.285)
locp <- data.frame(lon=a,lat=b)
locp <- as.matrix(locp)
locp

#est02

#a <- c(-37.5661)
#b <- c(-11.5419)
#locp <- data.frame(lon=a,lat=b)
#locp <- as.matrix(locp)
#locp

#est05

#a <- c(-35.0475)
#b <- c(-7.13)
#locp <- data.frame(lon=a,lat=b)
#locp <- as.matrix(locp)
#locp

#est06

#a <- c(-35.1567)
#b <- c(-7.9681)
#locp <- data.frame(lon=a,lat=b)
#locp <- as.matrix(locp)
#locp

#est07

#a <- c(-35.1733)
#b <- c(-7.8942)
#locp <- data.frame(lon=a,lat=b)
#locp <- as.matrix(locp)
#locp

#est08

#a <- c(-37.345)
#b <- c(-10.9417)
#locp <- data.frame(lon=a,lat=b)
#locp <- as.matrix(locp)
#locp

#est09

#a <- c(-37.1928)
#b <- c(-10.6528)
#locp <- data.frame(lon=a,lat=b)
#locp <- as.matrix(locp)
#locp

#est10

#a <- c(-37.4783)
#b <- c(-11.0303)
#locp <- data.frame(lon=a,lat=b)
#locp <- as.matrix(locp)
#locp

#est11

#a <- c(-37.4431)
#b <- c(-11.2667)
#locp <- data.frame(lon=a,lat=b)
#locp <- as.matrix(locp)
#locp

#est12

#a <- c(-37.00333333)
#b <- c(-9.972777778)
#locp <- data.frame(lon=a,lat=b)
#locp <- as.matrix(locp)
#locp

#est13

#a <- c(-35.4681)
#b <- c(-7.0294)
#locp <- data.frame(lon=a,lat=b)
#locp <- as.matrix(locp)
#locp

#est14

#a <- c(-35.28388889)
#b <- c(-8.113611111)
#locp <- data.frame(lon=a,lat=b)
#locp <- as.matrix(locp)
#locp

#est15

#a <- c(-36.82388889)
#b <- c(-10.21527778)
#locp <- data.frame(lon=a,lat=b)
#locp <- as.matrix(locp)
#locp

#est16

#a <- c(-37.2453)
#b <- c(-9.3728)
#locp <- data.frame(lon=a,lat=b)
#locp <- as.matrix(locp)
#locp

#est17

#a <- c(-37.93694444)
#b <- c(-11.655)
#locp <- data.frame(lon=a,lat=b)
#locp <- as.matrix(locp)
#locp

#est18

#a <- c(-35.9997)
#b <- c(-7.5283)
#locp <- data.frame(lon=a,lat=b)
#locp <- as.matrix(locp)
#locp

#est20

#a <- c(-36.5603)
#b <- c(-8.3656)
#locp <- data.frame(lon=a,lat=b)
#locp <- as.matrix(locp)
#locp

#est21

#a <- c(-37.8306)
#b <- c(-8.9208)
#locp <- data.frame(lon=a,lat=b)
#locp <- as.matrix(locp)
#locp

#est24

#a <- c(-37.1317)
#b <- c(-9.1056)
#locp <- data.frame(lon=a,lat=b)
#locp <- as.matrix(locp)
#locp

#est25

#a <- c(-35.5233)
#b <- c(-5.8458)
#locp <- data.frame(lon=a,lat=b)
#locp <- as.matrix(locp)
#locp

#est26

#a <- c(-36.01083333)
#b <- c(-8.302777778)
#locp <- data.frame(lon=a,lat=b)
#locp <- as.matrix(locp)
#locp

#est28

#a <- c(-35.24861111)
#b <- c(-6.085277778)
#locp <- data.frame(lon=a,lat=b)
#locp <- as.matrix(locp)
#locp

#est29

#a <- c(-35.42583332)
#b <- c(-5.65333333)
#locp <- data.frame(lon=a,lat=b)
#locp <- as.matrix(locp)
#locp

#est30

#a <- c(-35.20777777)
#b <- c(-5.83722221)
#locp <- data.frame(lon=a,lat=b)
#locp <- as.matrix(locp)
#locp

#est31

#a <- c(-35.71805554)
#b <- c(-6.97555554)
#locp <- data.frame(lon=a,lat=b)
#locp <- as.matrix(locp)
#locp

#est32

#a <- c(-35.90472222)
#b <- c(-7.22555554)
#locp <- data.frame(lon=a,lat=b)
#locp <- as.matrix(locp)
#locp

#est33

#a <- c(-35.801056)
#b <- c(-7.839628)
#locp <- data.frame(lon=a,lat=b)
#locp <- as.matrix(locp)
#locp

#est34

#a <- c(-34.8486111)
#b <- c(-7.09527777)
#locp <- data.frame(lon=a,lat=b)
#locp <- as.matrix(locp)
#locp

#est36

#a <- c(-36.49333333)
#b <- c(-8.91083333)
#locp <- data.frame(lon=a,lat=b)
#locp <- as.matrix(locp)
#locp

#est37

#a <- c(-37.93805555)
#b <- c(-9.26472222)
#locp <- data.frame(lon=a,lat=b)
#locp <- as.matrix(locp)
#locp

#est38

#a <- c(-37.43083332)
#b <- c(-9.74916666)
#locp <- data.frame(lon=a,lat=b)
#locp <- as.matrix(locp)
#locp

#est39

#a <- c(-36.62027777)
#b <- c(-9.42027777)
#locp <- data.frame(lon=a,lat=b)
#locp <- as.matrix(locp)
#locp

#est40

#a <- c(-35.77083332)
#b <- c(-9.55138888)
#locp <- data.frame(lon=a,lat=b)
#locp <- as.matrix(locp)
#locp

#est41

#a <- c(-35.299881)
#b <- c(-9.162012)
#locp <- data.frame(lon=a,lat=b)
#locp <- as.matrix(locp)
#locp

#est42

#a <- c(-36.84222221)
#b <- c(-10.21388888)
#locp <- data.frame(lon=a,lat=b)
#locp <- as.matrix(locp)
#locp

#est44

#a <- c(-37.79499999)
#b <- c(-11.27222221)
#locp <- data.frame(lon=a,lat=b)
#locp <- as.matrix(locp)
#locp

#Fazendo a interpolação.

KC <- krige.control(type = "SK", obj.mod = precip02)

OC <- output.control(n.pred = 100, simul = TRUE)

set.seed(2419)

krige <-krige.conv(geodata=dados, krige=KC, locations = locp, out=OC)

krige

krige$predict

