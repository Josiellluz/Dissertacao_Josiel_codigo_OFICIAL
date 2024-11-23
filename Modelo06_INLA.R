#CARREGANDO O PACOTE 

library("INLA")

library("dplyr")

#CARREGANDO OS DADOS

dados <- dados.final.44

#Retirando a estação a ser interpolada.

#Lembrando que o modelo interpolado é espaço-temporal.

#Para exemplificar faremos a interpolação na estação 44.

dados <- dados[441:1408,]%>% slice(-c(44,88,132,176,220,264,308,352,396,440,484,528,572,616,660,704,748,792,836,880,924,968))

dados[1:100,]

#FAZENDO A DISCRETIZAÇÃO

#Separando as coordenadas dos dados

josi_coords <- unique(dados[c("josi_est", "josi_lon", "josi_lat")])

josi_coords

#Construindo os limites para a discretização

josi_boundary <- inla.nonconvex.hull(as.matrix(josi_coords[, 2:3]))

josi_boundary

#Criando a malha

josi_MOmesh <- inla.mesh.2d(boundary = josi_boundary,
                            max.edge = c(0.3, 0.6), # max. edge length
                            cutoff = 0.1) # min. edge length

#Plotanto a malha e a localização dos pontos

plot(josi_MOmesh, asp = 1, main = "")

lines(josi_coords[c("josi_lon", "josi_lat")], col = "red", type = "p")

#DEFININDO A FUNÇÃO DE CORRELAÇÃO

josi_spde <- inla.spde2.pcmatern(mesh = josi_MOmesh,
                                 alpha = 2,
                                 prior.range = c(0.5, 0.01),
                                 prior.sigma = c(7, 0.01)) 

#Construindo um índice espaço-temporal

josi_n_years <- length(unique(dados$josi_temp))

josi_n_years

josi_n_spatial <- josi_MOmesh$n

josi_n_spatial

josi_s_index <- inla.spde.make.index(name = "spatial.field",
                                     n.spde = josi_n_spatial,
                                     n.group = josi_n_years)

josi_s_index

#EXTRAINDO A MATRIZ PROJETOR

josi_t <- c(rep(1,43),rep(2,43),rep(3,43),rep(4,43),rep(5,43),rep(6,43),rep(7,43),rep(8,43),rep(9,43),rep(10,43),
            rep(11,43),rep(12,43),rep(13,43),rep(14,43),rep(15,43),rep(16,43),rep(17,43),rep(18,43),rep(19,43),rep(20,43),
            rep(21,43),rep(22,43))

josi_t

josi_coords.allyear <- dados[c("josi_lon", "josi_lat")] %>%
  as.matrix()

josi_coords.allyear

josi_PHI <- inla.spde.make.A(mesh = josi_MOmesh,
                             loc = josi_coords.allyear,
                             group = josi_t,
                             n.group = josi_n_years)

dim(josi_PHI)




#EMPINHANDO AS INFORMAÇÕES

josi_n_data <- nrow(dados)

josi_n_data

josi_stack_est <- inla.stack(
  data = list(cnt = dados$josi_contag),
  A = list(josi_PHI, 1),
  effects = list(josi_s_index,
                 list(Intercept = rep(1, josi_n_data))),
  tag = "est")


josi_stack_est01 <- inla.stack(
  data = list(cnt = dados$josi_contag),
  A = list(josi_PHI, 1),
  effects = list(josi_s_index,
                 data.frame(list(Intercept = rep(1, josi_n_data)), 
                            josi_lat = inla.group(dados$josi_lat), 
                            josi_lon = inla.group(dados$josi_lon))),
  tag = "est")

#DEFININDO O MODELO NOS LOCAIS DE PREVISÃO

#Ajustando os índices para previsão

josi_s_index_prev <- inla.spde.make.index(name = "spatial.field.josi",
                                          n.spde = 1,
                                          n.group = 22)

josi_s_index_prev

#Definindo as coordenadas do local a ser interpolado.

#est01

#a <- c(-36.5564)
#b <- c(-10.285)
#locp <- data.frame(lon=a,lat=b)
#locp <- as.matrix(locp)
#locp

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

josi_MOmesh$n


josi_df_pred <- data.frame(josi_lon = rep(locp[1,1], josi_n_years),
                           josi_lat = rep(locp[1,2], josi_n_years),
                           t = rep(1:josi_n_years, each = 1))

josi_df_pred

josi_n_pred <- nrow(josi_df_pred)

josi_n_pred

#josi_PHI_pred <- Diagonal(n = josi_n_pred)

#josi_PHI_pred


loc <- cbind(rep(locp[1,1],22),rep(locp[1,2],22)) %>%
  as.matrix()

josi_PHI_pred <- inla.spde.make.A(mesh = josi_MOmesh,
                                  loc = loc, group=c(1:22),
                                  n.group = josi_n_years)

dim(josi_PHI_pred)

josi_s_index_prev


josi_stack_pred <- inla.stack(
  data = list(cnt = NA),
  A = list(josi_PHI_pred, 1),
  effects = list(josi_s_index,
                 list(Intercept = rep(1, josi_n_pred))),
  tag = "pred")

#COMBINANDO A PILHA DE ESTIMATIVA E A DE PREVISÃO

josi_stack <- inla.stack(josi_stack_est, josi_stack_pred)

#DEFININDO UM PRIORI PARA RHO REFERENTE AO MODELO AR(1)

## PC prior on rho

josi_rho_hyper <- list(theta=list(prior = 'pccor1',
                                  param = c(0, 0.9)))

## DEFININDO A FORMULA

josi_formula <- cnt ~ -1 + Intercept +
  f(spatial.field,
    model = josi_spde,
    group = spatial.field.group,
    control.group = list(model = "ar1",
                         hyper = josi_rho_hyper))

josi_output <- inla(josi_formula,
                    data = inla.stack.data(josi_stack, spde = josi_spde),
                    family = "Poisson",
                    control.predictor = list(A = inla.stack.A(josi_stack),
                                             compute = TRUE), control.compute=list(dic=TRUE,cpo=TRUE,mlik=TRUE))



josi_output$marginals.fitted.values

#EXTRAINDO AS PREVISÕES

josi_index_pred <- inla.stack.index(josi_stack, "pred")$data

josi_index_pred

josi_lp_mean <- josi_output$summary.fitted.values$mean[josi_index_pred]

exp(josi_lp_mean)

