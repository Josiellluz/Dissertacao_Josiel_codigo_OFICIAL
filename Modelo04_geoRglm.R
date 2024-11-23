#Carregando os pacotes

library(geoR)

library(geoRglm)

library(dplyr)

#Carregando os dados.

dados <- dados.final.44

#Retirando a estação a ser interpolada.

#Para exemplificar faremos a interpolação na estação 1 considerando o ano de 2001.

dados <- dados[441:484,]%>% slice(-c(1))

#Organizando os dados num data frame.

coord01 <- c(dados[1:43,5],dados[1:43,4])
coord01

coord <- matrix(coord01,nrow=43,ncol=2)
coord

lista01 <- data.frame(
  coord=coord,
  dados=c(dados[1:43,3]), alt=dados[1:43,7])

lista01

#Transformando o data frame em um objeto geodata.

dados <- as.geodata(obj=lista01, covar.col = c(1,2,4))

dados

#Localizações a serem interpoladas

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


#Especificando o modelo

Ypred <- pois.krige.bayes(dados,locations=locp, model=model.glm.control(cov.model = "exponential", trend.d="2nd", trend.l = "2nd", aniso.pars=c(pi/6,4)), prior = prior.glm.control(phi.prior = 'uniform', phi.discrete = seq(0.5,3,0.05),tausq.rel=0.25), 
                          mcmc.input=mcmc.control(S.scale=0.013, n.iter = 110000, thin = 10, burn.in = 1000, phi.scale = 0.4, phi.start = 1), output=output.glm.control(sim.posterior=T, sim.predict=T, keep.mcmc.sim=T,
                                                                                                                                                                        threshold=40, inference=T, messages=T))
Ypred$predictive$median

######Avaliando as convergências das cadeias

library(coda)

Ypred$posterior$simulations[1,]

chn1.mcmc <- mcmc(cbind(beta0=Ypred$posterior$beta$sample[1,], beta1=Ypred$posterior$beta$sample[2,], beta2=Ypred$posterior$beta$sample[3,], beta3=Ypred$posterior$beta$sample[4,], beta4=Ypred$posterior$beta$sample[5,], beta5=Ypred$posterior$beta$sample[6,],sigma=Ypred$posterior$sigmasq$sample, phi=Ypred$posterior$phi$sample, s1=Ypred$posterior$simulations[1,], s2=Ypred$posterior$simulations[2,], s3=Ypred$posterior$simulations[3,],
                        s4=Ypred$posterior$simulations[4,], s5=Ypred$posterior$simulations[5,], s6=Ypred$posterior$simulations[6,], s7=Ypred$posterior$simulations[7,], s8=Ypred$posterior$simulations[8,], s9=Ypred$posterior$simulations[9,], s10=Ypred$posterior$simulations[10,], s11=Ypred$posterior$simulations[11,], s12=Ypred$posterior$simulations[12,], s13=Ypred$posterior$simulations[13,], s14=Ypred$posterior$simulations[14,], s15=Ypred$posterior$simulations[15,], s16=Ypred$posterior$simulations[16,], s17=Ypred$posterior$simulations[17,],
                        s18=Ypred$posterior$simulations[18,], s19=Ypred$posterior$simulations[19,], s20=Ypred$posterior$simulations[20,], s21=Ypred$posterior$simulations[21,], s22=Ypred$posterior$simulations[22,], s23=Ypred$posterior$simulations[23,], s24=Ypred$posterior$simulations[24,], s25=Ypred$posterior$simulations[25,], s26=Ypred$posterior$simulations[26,], s27=Ypred$posterior$simulations[27,], s28=Ypred$posterior$simulations[28,], s29=Ypred$posterior$simulations[29,], s30=Ypred$posterior$simulations[30,],
                        s31=Ypred$posterior$simulations[31,], s32=Ypred$posterior$simulations[32,], s33=Ypred$posterior$simulations[33,], s34=Ypred$posterior$simulations[34,], s35=Ypred$posterior$simulations[35,], s36=Ypred$posterior$simulations[36,], s37=Ypred$posterior$simulations[37,], s38=Ypred$posterior$simulations[38,], s39=Ypred$posterior$simulations[39,], s40=Ypred$posterior$simulations[40,], s41=Ypred$posterior$simulations[41,], s42=Ypred$posterior$simulations[42,], s43=Ypred$posterior$simulations[43,]))

chn1.mcmc

#Plotando as cadeias

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
plot.ts(chn1.mcmc[,47])
plot.ts(chn1.mcmc[,48])
plot.ts(chn1.mcmc[,49])
plot.ts(chn1.mcmc[,50])
plot.ts(chn1.mcmc[,51])

#gráfico da autocorrelação

autocorr.plot(chn1.mcmc[,1])
autocorr.plot(chn1.mcmc[,2])
autocorr.plot(chn1.mcmc[,3])
autocorr.plot(chn1.mcmc[,4])
autocorr.plot(chn1.mcmc[,5])
autocorr.plot(chn1.mcmc[,6])
autocorr.plot(chn1.mcmc[,7])
autocorr.plot(chn1.mcmc[,8])
autocorr.plot(chn1.mcmc[,9])
autocorr.plot(chn1.mcmc[,10])
autocorr.plot(chn1.mcmc[,11])
autocorr.plot(chn1.mcmc[,12])
autocorr.plot(chn1.mcmc[,13])
autocorr.plot(chn1.mcmc[,14])
autocorr.plot(chn1.mcmc[,15])
autocorr.plot(chn1.mcmc[,16])
autocorr.plot(chn1.mcmc[,17])
autocorr.plot(chn1.mcmc[,18])
autocorr.plot(chn1.mcmc[,19])
autocorr.plot(chn1.mcmc[,20])
autocorr.plot(chn1.mcmc[,21])
autocorr.plot(chn1.mcmc[,22])
autocorr.plot(chn1.mcmc[,23])
autocorr.plot(chn1.mcmc[,24])
autocorr.plot(chn1.mcmc[,25])
autocorr.plot(chn1.mcmc[,26])
autocorr.plot(chn1.mcmc[,27])
autocorr.plot(chn1.mcmc[,28])
autocorr.plot(chn1.mcmc[,29])
autocorr.plot(chn1.mcmc[,30])
autocorr.plot(chn1.mcmc[,31])
autocorr.plot(chn1.mcmc[,32])
autocorr.plot(chn1.mcmc[,33])
autocorr.plot(chn1.mcmc[,34])
autocorr.plot(chn1.mcmc[,35])
autocorr.plot(chn1.mcmc[,36])
autocorr.plot(chn1.mcmc[,37])
autocorr.plot(chn1.mcmc[,38])
autocorr.plot(chn1.mcmc[,39])
autocorr.plot(chn1.mcmc[,40])
autocorr.plot(chn1.mcmc[,41])
autocorr.plot(chn1.mcmc[,42])
autocorr.plot(chn1.mcmc[,43])
autocorr.plot(chn1.mcmc[,44])
autocorr.plot(chn1.mcmc[,45])
autocorr.plot(chn1.mcmc[,46])
autocorr.plot(chn1.mcmc[,47])
autocorr.plot(chn1.mcmc[,48])
autocorr.plot(chn1.mcmc[,49])
autocorr.plot(chn1.mcmc[,50])
autocorr.plot(chn1.mcmc[,51])






















