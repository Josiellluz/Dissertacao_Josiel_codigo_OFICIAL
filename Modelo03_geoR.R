
library(geoR)

library(dplyr)

#Carregando os dados.

dados <- dados.final.44

#Valores das covariáveis no ponto a ser interpolado.
#Para exemplificar será interpolado na estação 1 considerando o ano 2001.

#Estação 01

h <- data.frame(dados[1,5],dados[1,4],(dados[1,5])^2,(dados[1,4])^2,(dados[1,5])*(dados[1,4]),dados[1,7])

c <- as.matrix(h)

#Estação 02

#h <- data.frame(dados[2,5],dados[2,4],(dados[2,5])^2,(dados[2,4])^2,(dados[2,5])*(dados[2,4]),dados[2,7])

#c <- as.matrix(h)

#Estação 05

#h <- data.frame(dados[5,5],dados[5,4],(dados[5,5])^2,(dados[5,4])^2,(dados[5,5])*(dados[5,4]),dados[5,7])

#c <- as.matrix(h)

#Estação 06

#h <- data.frame(dados[6,5],dados[6,4],(dados[6,5])^2,(dados[6,4])^2,(dados[6,5])*(dados[6,4]),dados[6,7])

#c <- as.matrix(h)

#Estação 07

#h <- data.frame(dados[7,5],dados[7,4],(dados[7,5])^2,(dados[7,4])^2,(dados[7,5])*(dados[7,4]),dados[7,7])

#c <- as.matrix(h)

#Estação 08

#h <- data.frame(dados[8,5],dados[8,4],(dados[8,5])^2,(dados[8,4])^2,(dados[8,5])*(dados[8,4]),dados[8,7])

#c <- as.matrix(h)

#Estação 09

#h <- data.frame(dados[9,5],dados[9,4],(dados[9,5])^2,(dados[9,4])^2,(dados[9,5])*(dados[9,4]),dados[9,7])

#c <- as.matrix(h)

#Estação 10

#h <- data.frame(dados[10,5],dados[10,4],(dados[10,5])^2,(dados[10,4])^2,(dados[10,5])*(dados[10,4]),dados[10,7])

#c <- as.matrix(h)

#Estação 11

#h <- data.frame(dados[11,5],dados[11,4],(dados[11,5])^2,(dados[11,4])^2,(dados[11,5])*(dados[11,4]),dados[11,7])

#c <- as.matrix(h)

#Estação 12

#h <- data.frame(dados[12,5],dados[12,4],(dados[12,5])^2,(dados[12,4])^2,(dados[12,5])*(dados[12,4]),dados[12,7])

#c <- as.matrix(h)

#Estação 13

#h <- data.frame(dados[13,5],dados[13,4],(dados[13,5])^2,(dados[13,4])^2,(dados[13,5])*(dados[13,4]),dados[13,7])

#c <- as.matrix(h)

#Estação 14

#h <- data.frame(dados[14,5],dados[14,4],(dados[14,5])^2,(dados[14,4])^2,(dados[14,5])*(dados[14,4]),dados[14,7])

#c <- as.matrix(h)

#Estação 15

#h <- data.frame(dados[15,5],dados[15,4],(dados[15,5])^2,(dados[15,4])^2,(dados[15,5])*(dados[15,4]),dados[15,7])

#c <- as.matrix(h)

#Estação 16

#h <- data.frame(dados[16,5],dados[16,4],(dados[16,5])^2,(dados[16,4])^2,(dados[16,5])*(dados[16,4]),dados[16,7])

#c <- as.matrix(h)

#Estação 17

#h <- data.frame(dados[17,5],dados[17,4],(dados[17,5])^2,(dados[17,4])^2,(dados[17,5])*(dados[17,4]),dados[17,7])

#c <- as.matrix(h)

#Estação 18

#h <- data.frame(dados[18,5],dados[18,4],(dados[18,5])^2,(dados[18,4])^2,(dados[18,5])*(dados[18,4]),dados[18,7])

#c <- as.matrix(h)

#Estação 20

#h <- data.frame(dados[20,5],dados[20,4],(dados[20,5])^2,(dados[20,4])^2,(dados[20,5])*(dados[20,4]),dados[20,7])

#c <- as.matrix(h)

#Estação 21

#h <- data.frame(dados[21,5],dados[21,4],(dados[21,5])^2,(dados[21,4])^2,(dados[21,5])*(dados[21,4]),dados[21,7])

#c <- as.matrix(h)

#Estação 24

#h <- data.frame(dados[24,5],dados[24,4],(dados[24,5])^2,(dados[24,4])^2,(dados[24,5])*(dados[24,4]),dados[24,7])

#c <- as.matrix(h)

#Estação 25

#h <- data.frame(dados[25,5],dados[25,4],(dados[25,5])^2,(dados[25,4])^2,(dados[25,5])*(dados[25,4]),dados[25,7])

#c <- as.matrix(h)

#Estação 26

#h <- data.frame(dados[26,5],dados[26,4],(dados[26,5])^2,(dados[26,4])^2,(dados[26,5])*(dados[26,4]),dados[26,7])

#c <- as.matrix(h)

#Estação 28

#h <- data.frame(dados[28,5],dados[28,4],(dados[28,5])^2,(dados[28,4])^2,(dados[28,5])*(dados[28,4]),dados[28,7])

#c <- as.matrix(h)

#Estação 29

#h <- data.frame(dados[29,5],dados[29,4],(dados[29,5])^2,(dados[29,4])^2,(dados[29,5])*(dados[29,4]),dados[29,7])

#c <- as.matrix(h)

#Estação 30

#h <- data.frame(dados[30,5],dados[30,4],(dados[30,5])^2,(dados[30,4])^2,(dados[30,5])*(dados[30,4]),dados[30,7])

#c <- as.matrix(h)

#Estação 31

#h <- data.frame(dados[31,5],dados[31,4],(dados[31,5])^2,(dados[31,4])^2,(dados[31,5])*(dados[31,4]),dados[31,7])

#c <- as.matrix(h)

#Estação 32

#h <- data.frame(dados[32,5],dados[32,4],(dados[32,5])^2,(dados[32,4])^2,(dados[32,5])*(dados[32,4]),dados[32,7])

#c <- as.matrix(h)

#Estação 33

#h <- data.frame(dados[33,5],dados[33,4],(dados[33,5])^2,(dados[33,4])^2,(dados[33,5])*(dados[33,4]),dados[33,7])

#c <- as.matrix(h)

#Estação 34

#h <- data.frame(dados[34,5],dados[34,4],(dados[34,5])^2,(dados[34,4])^2,(dados[34,5])*(dados[34,4]),dados[34,7])

#c <- as.matrix(h)

#Estação 36

#h <- data.frame(dados[36,5],dados[36,4],(dados[36,5])^2,(dados[36,4])^2,(dados[36,5])*(dados[36,4]),dados[36,7])

#c <- as.matrix(h)

#Estação 37

#h <- data.frame(dados[37,5],dados[37,4],(dados[37,5])^2,(dados[37,4])^2,(dados[37,5])*(dados[37,4]),dados[37,7])

#c <- as.matrix(h)

#Estação 38

#h <- data.frame(dados[38,5],dados[38,4],(dados[38,5])^2,(dados[38,4])^2,(dados[38,5])*(dados[38,4]),dados[38,7])

#c <- as.matrix(h)

#Estação 39

#h <- data.frame(dados[39,5],dados[39,4],(dados[39,5])^2,(dados[39,4])^2,(dados[39,5])*(dados[39,4]),dados[39,7])

#c <- as.matrix(h)

#Estação 40

#h <- data.frame(dados[40,5],dados[40,4],(dados[40,5])^2,(dados[40,4])^2,(dados[40,5])*(dados[40,4]),dados[40,7])

#c <- as.matrix(h)

#Estação 41

#h <- data.frame(dados[41,5],dados[41,4],(dados[41,5])^2,(dados[41,4])^2,(dados[41,5])*(dados[41,4]),dados[41,7])

#c <- as.matrix(h)

#Estação 42

#h <- data.frame(dados[42,5],dados[42,4],(dados[42,5])^2,(dados[42,4])^2,(dados[42,5])*(dados[42,4]),dados[42,7])

#c <- as.matrix(h)

#Estação 44

#h <- data.frame(dados[44,5],dados[44,4],(dados[44,5])^2,(dados[44,4])^2,(dados[44,5])*(dados[44,4]),dados[44,7])

#c <- as.matrix(h)

####

#Retirando a estação a ser interpolada do conjunto de dados.

#Para exemplificar retiraremos a estação 1 do ano de 2001.

dados <- dados[441:484,]%>% slice(-c(1))

dados

coord01 <- c(dados[1:43,5],dados[1:43,4])
coord01

coord <- matrix(coord01,nrow=43,ncol=2)
coord

lista01 <- data.frame(
  coord=coord,
  dados=c(dados[1:43,3])+c(rep(0.5,43)), alt=dados[1:43,7])

lista01

dados <- as.geodata(obj=lista01, covar.col = c(1,2,4))

dados

#Valores das covariáves nos locais dos dados

j <- data.frame(dados$covariate$coord.1,dados$covariate$coord.2,(dados$covariate$coord.1)^2,(dados$covariate$coord.2)^2,dados$covariate$coord.1*dados$covariate$coord.2,dados$covariate$alt)

j <- as.matrix(j)

#Montando o modelo empírico do variograma

ca20.v <- variog(dados, trend =~coord.1+coord.2+I(coord.1^2)+I(coord.2^2)+I(coord.1*coord.2)+alt, uvec=seq(0,4,by=0.2), option=c("bin"), pairs.min = 10, bin.cloud=T)

plot(ca20.v)

#################

#dev.new()

#eyefit_exp <- eyefit(ca20.v)

#Ajustando um modelo de variograma paramétrico

josi_fit <- variofit(ca20.v, ini.cov.pars = c(13.76,0.32), nugget=9.17)

josi_fit

#Ajustanto o modelo

precip02 <- likfit(dados, trend =~coord.1+coord.2+I(coord.1^2)+I(coord.2^2)+I(coord.1*coord.2)+alt,ini=josi_fit, fix.kappa=F, fix.nugget=T, fix.lambda=F, fix.psiA=F, fix.psiR=F)

summary(precip02)

#Definindo as coordenas do local a ser interpolado.

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

#Interpolando para os locais não amostrados

KC <- krige.control(type = "SK", obj.mod = precip02,  trend.d =~j, trend.l=~c)

krige <-krige.conv(geodata=dados, krige=KC, locations = locp)

krige$predict








