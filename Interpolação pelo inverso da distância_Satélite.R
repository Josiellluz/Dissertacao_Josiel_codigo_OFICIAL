
library(dplyr)

josi_dados30_sat_final #estimativas do satélite

#A seguir são listadas as vizinhanças de cada estação a ser interpolada.
#Usou-se o software Qgis para determinar a vizinhança.
#A vizinhança foi definida para um raio de busca de 20 km

#Est1 -> 1024, 1025, 1026, 1047, 1048, 1049, 1069, 1070, 1071, 1091
#Est2 -> 101, 103, 104, 111, 112, 115, 121, 122 
#Est5 -> 209, 225, 226, 227, 245, 246, 247, 263, 264, 265 
#Est6 -> 369, 370, 371, 385, 386, 387, 402, 403, 404
#Est7 -> 352, 353, 369, 370, 371, 385, 386, 387, 402, 403
#Est8 -> 33, 34, 35, 46, 48, 49, 60, 61, 62
#Est9 -> 5, 6, 7, 21, 22, 23, 1103, 1104, 1105
#Est10 -> 45, 46, 48, 57, 59, 60, 61, 71, 72, 73
#Est11 -> 71, 72, 73, 82, 83, 84, 93, 94, 95
#Est12 -> 938, 939, 966, 967, 968, 969, 992, 993, 994, 995
#Est13 -> 190, 204, 205, 206, 220, 222, 223, 240, 241, 242
#Est14 -> 384, 385, 400, 401, 402, 403, 415, 416, 417, 418, 433, 434
#Est15 -> 995, 996, 1022, 1023, 1044, 1045, 1046, 1047, 1067, 1068
#Est16 -> 726, 727, 728, 763, 764, 766, 801, 802, 803, 837
#Est17 -> 107, 108, 109, 117, 118, 119, 123, 124, 126
#Est18 -> 290, 291, 292, 293, 307, 308, 309, 311, 326, 327
#Est20 -> 438, 457, 458
#Est21 -> 528, 559, 560, 561, 597, 598, 600, 638, 639, 640
#Est24 -> 606, 607, 646, 647, 648, 687, 689, 690, 728, 729
#Est25 -> 543, 554, 566, 643, 654, 665, 677, 743, 754, 765
#Est26 -> 408, 409, 424, 425, 426, 427, 441, 442, 444, 445, 462, 463
#Est28 -> 776, 778, 876, 887, 899, 976, 987, 998, 1087
#Est29 -> 344, 355, 366, 455, 466, 477, 488, 554, 566, 577
#Est30 -> 577, 588, 677, 688, 788
#Est31 -> 186, 187, 201, 202, 203, 204, 217, 218, 219, 238
#Est32 -> 235, 236, 237, 238, 253, 254, 256, 257, 273, 274
#Est33 -> 345, 346, 347, 348, 361, 362, 363, 364, 379, 380
#Est34 -> 211, 227, 228, 247, 248, 267
#Est36 -> 534, 535, 571, 572, 573, 574, 612, 613, 614, 615, 653, 655
#Est37 -> 679, 680, 681, 718, 719, 720, 756. 757, 758
#Est38 -> 868, 869, 870, 902, 903, 904, 905, 933, 934, 935
#Est39 -> 734, 770, 771, 772, 807, 808, 809, 811, 844, 845
#Est40 -> 817, 818, 819, 851, 852, 853, 855, 886, 888
#Est41 -> 667, 668, 707, 708, 747
#Est42 -> 1020, 1022, 1023, 1044, 1045, 1046, 1066, 1067, 1068
#Est44 -> 67, 68, 77, 78, 79, 81, 88, 89, 90, 92 

#Selecionando apenas as estações da vizinhança.
#Para exemplificar, a seguir é feita a interpolação para a estação 44 no ano de 2022. 

#2001

#dados <- data.frame(est=josi_dados30_sat_final[1:1119,1],lon=josi_dados30_sat_final[1:1119,4],lat=josi_dados30_sat_final[1:1119,5],p=josi_dados30_sat_final[1:1119,3])

#2002

#dados <- data.frame(est=josi_dados30_sat_final[1:1119,1],lon=josi_dados30_sat_final[1:1119,4],lat=josi_dados30_sat_final[1:1119,5],p=josi_dados30_sat_final[1120:2238,3])

#2003

#dados <- data.frame(est=josi_dados30_sat_final[1:1119,1],lon=josi_dados30_sat_final[1:1119,4],lat=josi_dados30_sat_final[1:1119,5],p=josi_dados30_sat_final[2239:3357,3])

#2004

#dados <- data.frame(est=josi_dados30_sat_final[1:1119,1],lon=josi_dados30_sat_final[1:1119,4],lat=josi_dados30_sat_final[1:1119,5],p=josi_dados30_sat_final[3358:4476,3])

#2005

#dados <- data.frame(est=josi_dados30_sat_final[1:1119,1],lon=josi_dados30_sat_final[1:1119,4],lat=josi_dados30_sat_final[1:1119,5],p=josi_dados30_sat_final[4477:5595,3])

#2006

#dados <- data.frame(est=josi_dados30_sat_final[1:1119,1],lon=josi_dados30_sat_final[1:1119,4],lat=josi_dados30_sat_final[1:1119,5],p=josi_dados30_sat_final[5596:6714,3])

#2007

#dados <- data.frame(est=josi_dados30_sat_final[1:1119,1],lon=josi_dados30_sat_final[1:1119,4],lat=josi_dados30_sat_final[1:1119,5],p=josi_dados30_sat_final[6715:7833,3])

#2008

#dados <- data.frame(est=josi_dados30_sat_final[1:1119,1],lon=josi_dados30_sat_final[1:1119,4],lat=josi_dados30_sat_final[1:1119,5],p=josi_dados30_sat_final[7834:8952,3])

#2009

#dados <- data.frame(est=josi_dados30_sat_final[1:1119,1],lon=josi_dados30_sat_final[1:1119,4],lat=josi_dados30_sat_final[1:1119,5],p=josi_dados30_sat_final[8953:10071,3])

#2010

#dados <- data.frame(est=josi_dados30_sat_final[1:1119,1],lon=josi_dados30_sat_final[1:1119,4],lat=josi_dados30_sat_final[1:1119,5],p=josi_dados30_sat_final[10072:11190,3])

#2011

#dados <- data.frame(est=josi_dados30_sat_final[1:1119,1],lon=josi_dados30_sat_final[1:1119,4],lat=josi_dados30_sat_final[1:1119,5],p=josi_dados30_sat_final[11191:12309,3])

#2012

#dados <- data.frame(est=josi_dados30_sat_final[1:1119,1],lon=josi_dados30_sat_final[1:1119,4],lat=josi_dados30_sat_final[1:1119,5],p=josi_dados30_sat_final[12310:13428,3])

#2013

#dados <- data.frame(est=josi_dados30_sat_final[1:1119,1],lon=josi_dados30_sat_final[1:1119,4],lat=josi_dados30_sat_final[1:1119,5],p=josi_dados30_sat_final[13429:14547,3])

#2014

#dados <- data.frame(est=josi_dados30_sat_final[1:1119,1],lon=josi_dados30_sat_final[1:1119,4],lat=josi_dados30_sat_final[1:1119,5],p=josi_dados30_sat_final[14548:15666,3])

#2015

#dados <- data.frame(est=josi_dados30_sat_final[1:1119,1],lon=josi_dados30_sat_final[1:1119,4],lat=josi_dados30_sat_final[1:1119,5],p=josi_dados30_sat_final[15667:16785,3])

#2016

#dados <- data.frame(est=josi_dados30_sat_final[1:1119,1],lon=josi_dados30_sat_final[1:1119,4],lat=josi_dados30_sat_final[1:1119,5],p=josi_dados30_sat_final[16786:17904,3])

#2017

#dados <- data.frame(est=josi_dados30_sat_final[1:1119,1],lon=josi_dados30_sat_final[1:1119,4],lat=josi_dados30_sat_final[1:1119,5],p=josi_dados30_sat_final[17905:19023,3])

#2018

#dados <- data.frame(est=josi_dados30_sat_final[1:1119,1],lon=josi_dados30_sat_final[1:1119,4],lat=josi_dados30_sat_final[1:1119,5],p=josi_dados30_sat_final[19024:20142,3])

#2019

#dados <- data.frame(est=josi_dados30_sat_final[1:1119,1],lon=josi_dados30_sat_final[1:1119,4],lat=josi_dados30_sat_final[1:1119,5],p=josi_dados30_sat_final[20143:21261,3])

#2020

#dados <- data.frame(est=josi_dados30_sat_final[1:1119,1],lon=josi_dados30_sat_final[1:1119,4],lat=josi_dados30_sat_final[1:1119,5],p=josi_dados30_sat_final[21262:22380,3])

#2021

#dados <- data.frame(est=josi_dados30_sat_final[1:1119,1],lon=josi_dados30_sat_final[1:1119,4],lat=josi_dados30_sat_final[1:1119,5],p=josi_dados30_sat_final[22381:23499,3])

#2022

dados <- data.frame(est=josi_dados30_sat_final[1:1119,1],lon=josi_dados30_sat_final[1:1119,4],lat=josi_dados30_sat_final[1:1119,5],p=josi_dados30_sat_final[23500:24618,3])

#############|est==293|est==307|est==308|est==309|est==311|est==326|est==327

dados <- dados %>% filter(est==67|est==68|est==77|est==78|est==79|est==81|est==88|est==89|est==90|est==92) 


haversine <- function(lon1, lat1, lon2, lat2) {
  # converte graus pra radiano
  rad <- pi/180
  # raio medio da terra no equador em km
  R <- 6378.1
  
  dlon <- (lon2 - lon1) * rad
  dlat <- (lat2 - lat1) * rad
  
  a <- (sin(dlat/2))^2 +
    cos(lat1 * rad) *
    cos(lat2 * rad) *
    (sin(dlon/2))^2
  
  c <- 2 * atan2(sqrt(a), sqrt(1 - a))
  
  d <- R * c 
  
  # distancia em km
  return(d)
}

dist <- dados %>%
  mutate(d_itape01 = haversine(lon, lat,-37.79499999
                               ,-11.27222221
  ))

dist


idw <- function(x, dist, na.rm = TRUE) {
  s1 <-  sum(x / dist^2, na.rm = na.rm)
  s2 <-  sum(1 / dist^2, na.rm = na.rm)
  
  return(s1 / s2)
}

dados_itape <- dist %>% 
  add_row(
    .,est=01,
    lon = 01,
    lat = 01,
    p = round(idw(dist$p, dist$d_itape01), 1)
  )

dados_itape

dados.final.44


