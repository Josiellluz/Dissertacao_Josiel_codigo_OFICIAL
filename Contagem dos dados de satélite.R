

library(dplyr)

library(rio)

#Organizando os dados de satélite para fazer a contagem

satelite  #dados observados de satélite

#Colocando os dados em ordem temporal

dados <- satelite[order(satelite$Dias),]

dados <- dados[order(dados$ponto),]

#Lembrando que a contagem é feita por ano, então a variável a seguir "dados1" deve ser alterada o filtro para cada ano.

#Para exemplificar, faremos a contagem para em cada estação para o ano 2000.

dados1 <- dados %>% filter(Dias>="X2001.01.01",Dias<="X2001.12.31") 

dados1 <- dados1[order(dados1$ponto),]

d <- c(dados1[1:408435,5])

dados.ts <- matrix(d, nrow=365, 1119)

dados.ts[,228]

transforma <- function(mat, lim) {
  n <- length(mat)
  
  res <- NULL
  
  for (i in 1:n) {
    if ((mat[i] >= lim)) {
      temp <- i
      res <- c(res, temp)
    }
  }
  
  res
}

transforma(dados.ts,30)

#Matriz que determina os valores que ultrapassaram o limiar

lim=30

tamanho=NULL

for(i in 1:ncol(dados.ts)){
  temp=length(transforma(dados.ts[,i],lim))
  tamanho=c(tamanho,temp)
}

tamanho

d2001 <- tamanho

#d2002 <- tamanho

#d2003 <- tamanho

#d2004 <- tamanho

#d2005 <- tamanho

#d2006 <- tamanho

#d2007 <- tamanho

#d2008 <- tamanho

#d2009 <- tamanho

#d2010 <- tamanho

#d2011 <- tamanho

#d2012 <- tamanho

#d2013 <- tamanho

#d2014 <- tamanho

#d2015 <- tamanho

#d2016 <- tamanho

#d2017 <- tamanho

#d2018 <- tamanho

#d2019 <- tamanho

#d2020 <- tamanho

#d2021 <- tamanho

#d2022 <- tamanho

#Montando a tabela com as contagens

#josi_contag_sat <- matrix(c(d2001, d2002, d2003, d2004, d2005, d2006, d2007,
                            #d2008, d2009, d2010, d2011, d2012, d2013, d2014, d2015, d2016,
                            #d2017, d2018, d2019, d2020, d2021, d2022))

#josi_contag_sat <- c(josi_contag_sat)


#josi_anos_sat <- matrix(c(rep(2001,1119), rep(2002,1119), rep(2003,1119), rep(2004,1119),
                          #rep(2005,1119), rep(2006,1119), rep(2007,1119), rep(2008,1119), rep(2009,1119), rep(2010,1119), rep(2011,1119),
                          #rep(2012,1119), rep(2013,1119), rep(2014,1119), rep(2015,1119), rep(2016,1119), rep(2017,1119), rep(2018,1119),
                          #rep(2019,1119), rep(2020,1119), rep(2021,1119), rep(2022,1119)))

#josi_anos_sat <- c(josi_anos_sat)

#josi_anos_sat

#josi_lat_sat <- array(NA, dim=c(1119,1))

#josi_lat_sat

#for(i in 1:1119){
  
  #josi_lat_sat[i] <- dados1[1+(i-1)*365,2]
  
#}

#josi_lat_sat <- c(josi_lat_sat)

#josi_lat_sat <- rep(josi_lat_sat,22)

#josi_lon_sat <- array(NA, dim=c(1119,1))

#for(i in 1:1119){
  
  #josi_lon_sat[i] <- dados1[1+(i-1)*365,1]
  
#}

#dados1

#josi_lon_sat <- c(josi_lon_sat)

#josi_lon_sat <- rep(josi_lon_sat,22)

#josi_temp_sat <- matrix(c(rep(1,1119), rep(2,1119), rep(3,1119), rep(4,1119), rep(5,1119), rep(6,1119), rep(7,1119), rep(8,1119), rep(9,1119),
                          #rep(10,1119), rep(11,1119), rep(12,1119), rep(13,1119), rep(14,1119), rep(15,1119), rep(16,1119), rep(17,1119), rep(18,1119),
                          #rep(19,1119), rep(20,1119), rep(21,1119), rep(22,1119)))


#josi_temp_sat <- c(josi_temp)

#josi_est_sat <- matrix(rep(1:1119,22))

#josi_est_sat <- c(josi_est)



#josi_dados30_sat <- data.frame(josi_est_sat,josi_temp_sat,josi_contag_sat,josi_lon_sat,josi_lat_sat,josi_anos_sat)

#Salvando o banco de dados

#export(josi_dados30_sat, "josi_dados30_sat_final.txt")

#export(josi_dados30_sat, "josi_dados30_sat_final.xlsx")
