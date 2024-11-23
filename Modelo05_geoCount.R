
library(geoCount)

library(coda)

library(dplyr)

#Definindo os argumentos para o MCMC

#Para exemplificar faremos a interpolação para a estação 1 referente ao ano de 2001.

dados <- dados.final.44

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

input4.dados04 <- MCMCinput(run=20000, run.S=1, rho.family="rhoMatern",
                            Y.family = "Poisson", ifkappa=0,
                            scales=c(0.03, 3.2, 0.47, 1.4, 0.001),
                            phi.bound=c(0.02,6.44),
                            initials=list(c(12), 30, 1.5, 0.01) )

rest4 <- runMCMC(Y=lista01$dados, loc=coord, X=NULL,
                 MCMCinput=input4.dados04)

res.m <- cutChain(res=rest4, chain.ind=1:4, burnin=10000, thinning=1)

res.m

#Definindo as coordenadas do local a ser interpolado.

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

Ypred <- predY(res.m, loc=coord, locp, X=NULL, Xp=NULL,
               Lp=rep(1, nrow(locp)), k=0.5,
               rho.family="rhoMatern", Y.family="Poisson")
Ypred

mean(Ypred$Y.predict)

#ANALISANDO A CONVERGÊNCIA

chn1.mcmc <- mcmc(cbind(S1=res.m$S.posterior[1,],S2=res.m$S.posterior[2,],S3=res.m$S.posterior[3,],S4=res.m$S.posterior[4,],S5=res.m$S.posterior[5,],
                        S6=res.m$S.posterior[6,],S7=res.m$S.posterior[7,],S8=res.m$S.posterior[8,],S9=res.m$S.posterior[9,],
                        S10=res.m$S.posterior[10,],S11=res.m$S.posterior[11,],S12=res.m$S.posterior[12,],S13=res.m$S.posterior[13,],S14=res.m$S.posterior[14,],
                        S15=res.m$S.posterior[15,],S16=res.m$S.posterior[16,],S17=res.m$S.posterior[17,],S18=res.m$S.posterior[18,],S19=res.m$S.posterior[19,],
                        S20=res.m$S.posterior[20,],S21=res.m$S.posterior[21,],S22=res.m$S.posterior[22,],S23=res.m$S.posterior[23,],S24=res.m$S.posterior[24,],
                        S25=res.m$S.posterior[25,],S26=res.m$S.posterior[26,],S27=res.m$S.posterior[27,],S28=res.m$S.posterior[28,],S29=res.m$S.posterior[29,],
                        S30=res.m$S.posterior[30,],S31=res.m$S.posterior[31,],S32=res.m$S.posterior[32,],S33=res.m$S.posterior[33,],S34=res.m$S.posterior[34,],
                        S35=res.m$S.posterior[35,],S36=res.m$S.posterior[36,],S37=res.m$S.posterior[37,],S38=res.m$S.posterior[38,],S39=res.m$S.posterior[39,],
                        S40=res.m$S.posterior[40,],S41=res.m$S.posterior[41,],S42=res.m$S.posterior[42,],S43=res.m$S.posterior[43,],beta=res.m$m.posterior,
                        sigma=res.m$s.posterior,phi=res.m$a.posterior))

plot.ts(chn1.mcmc[,1])
plot.ts(chn1.mcmc[,2])
plot.ts(chn1.mcmc[,3])
plot.ts(chn1.mcmc[,4])
plot.ts(chn1.mcmc[,5])
plot.ts(chn1.mcmc[,6])
plot.ts(chn1.mcmc[,7])
plot.ts(chn1.mcmc[,8])
plot.ts(chn1.mcmc[,9])
plot.ts(chn1.mcmc[,10])
plot.ts(chn1.mcmc[,11])
plot.ts(chn1.mcmc[,12])
plot.ts(chn1.mcmc[,13])
plot.ts(chn1.mcmc[,14])
plot.ts(chn1.mcmc[,15])
plot.ts(chn1.mcmc[,16])
plot.ts(chn1.mcmc[,17])
plot.ts(chn1.mcmc[,18])
plot.ts(chn1.mcmc[,19])
plot.ts(chn1.mcmc[,20])
plot.ts(chn1.mcmc[,21])
plot.ts(chn1.mcmc[,22])
plot.ts(chn1.mcmc[,23])
plot.ts(chn1.mcmc[,24])
plot.ts(chn1.mcmc[,25])
plot.ts(chn1.mcmc[,26])
plot.ts(chn1.mcmc[,27])
plot.ts(chn1.mcmc[,28])
plot.ts(chn1.mcmc[,29])
plot.ts(chn1.mcmc[,30])
plot.ts(chn1.mcmc[,31])
plot.ts(chn1.mcmc[,32])
plot.ts(chn1.mcmc[,33])
plot.ts(chn1.mcmc[,34])
plot.ts(chn1.mcmc[,35])
plot.ts(chn1.mcmc[,36])
plot.ts(chn1.mcmc[,37])
plot.ts(chn1.mcmc[,38])
plot.ts(chn1.mcmc[,39])
plot.ts(chn1.mcmc[,40])
plot.ts(chn1.mcmc[,41])
plot.ts(chn1.mcmc[,42])
plot.ts(chn1.mcmc[,43])
plot.ts(chn1.mcmc[,44])
plot.ts(chn1.mcmc[,45])
plot.ts(chn1.mcmc[,46])












