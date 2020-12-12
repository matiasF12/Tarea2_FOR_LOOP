############################################################################################
################################# MATIAS FARIAS VALDENEGRO ################################# 


###Carga de libreria
library(tidyverse)


#esto se debe cambiar
setwd("~/Github/Tarea2_FOR_LOOP")

###### PREGUNTA 1: Cargar bases de datos y creacion de variable "tamanio" #######

#Empresas grandes
Grandes_CH <- read.csv2("grandes_chile.csv")
Grandes_PE <- read.csv2("grandes_peru.csv")
Grandes_CO <- read.csv2("grandes_colombia.csv")

#Empresas medianas
Mediana_CH <- read.csv2("medianas_chile.csv")
Mediana_CO <- read.csv2("medianas_colombia.csv")
Mediana_PE <- read.csv2("medianas_peru.csv")

#Micro empresas
Micro_CH <- read.csv2("micro_chile.csv")
Micro_CO <- read.csv2("micro_colombia.csv")
Micro_PE <- read.csv2("micro_peru.csv")

#Pequena empresa
Pequena_CH <- read.csv2("pequena_chile.csv")
Pequena_CO <- read.csv2("pequena_colombia.csv")
Pequena_PE <- read.csv2("pequena_peru.csv")

################## Generar nueva variable y colocar tamano de empresa

#generar variable en base a pais
Grandes_CH <- mutate(Grandes_CH, tamanio = pais)
Grandes_CO <- mutate(Grandes_CO, tamanio = pais)
Grandes_PE <- mutate(Grandes_PE, tamanio = pais)

#cambiar dato a tamano empresa
Grandes_CH$tamanio[Grandes_CH$tamanio == "chile"] <- "grande"
Grandes_CO$tamanio[Grandes_CO$tamanio == "colombia"] <- "grande"
Grandes_PE$tamanio[Grandes_PE$tamanio == "peru"] <- "grande"

#generar variable en base a pais
Mediana_CH <- mutate(Mediana_CH, tamanio = pais)
Mediana_CO <- mutate(Mediana_CO, tamanio = pais)
Mediana_PE <- mutate(Mediana_PE, tamanio = pais)

#cambiar dato a tamano empresa
Mediana_CH$tamanio[Mediana_CH$tamanio == "chile"] <- "mediana"
Mediana_CO$tamanio[Mediana_CO$tamanio == "colombia"] <- "mediana"
Mediana_PE$tamanio[Mediana_PE$tamanio == "peru"] <- "mediana"

#generar variable en base a pais
Micro_CH <- mutate(Micro_CH, tamanio = pais)
Micro_CO <- mutate(Micro_CO, tamanio = pais)
Micro_PE <- mutate(Micro_PE, tamanio = pais)

#cambiar dato a tamano empresa
Micro_CH$tamanio[Micro_CH$tamanio == "chile"] <- "micro"
Micro_CO$tamanio[Micro_CO$tamanio == "colombia"] <- "micro"
Micro_PE$tamanio[Micro_PE$tamanio == "peru"] <- "micro"

#generar variable en base a pais
Pequena_CH <- mutate(Pequena_CH, tamanio = pais)
Pequena_CO <- mutate(Pequena_CO, tamanio = pais)
Pequena_PE <- mutate(Pequena_PE, tamanio = pais)

#cambiar dato a tamano empresa
Pequena_CH$tamanio[Pequena_CH$tamanio == "chile"] <- "pequena"
Pequena_CO$tamanio[Pequena_CO$tamanio == "colombia"] <- "pequena"
Pequena_PE$tamanio[Pequena_PE$tamanio == "peru"] <- "pequena"

#cambiando nombre a variable porcentaje_mujeres (en alguans está mal escrito)
names(Grandes_CH) <- c("fecha", "pais", "ingresos", "costos", "porcentaje_mujeres", "exportaciones",
                       "importaciones","endeudamiento", "morosidad", "reservas", "spread","tasa_interes", "tamanio")
names(Grandes_CO) <- c("fecha", "pais", "ingresos", "costos", "porcentaje_mujeres", "exportaciones",
                       "importaciones","endeudamiento", "morosidad", "reservas", "spread","tasa_interes", "tamanio")
names(Grandes_PE) <- c("fecha", "pais", "ingresos", "costos", "porcentaje_mujeres", "exportaciones",
                       "importaciones","endeudamiento", "morosidad", "reservas", "spread", "tasa_interes", "tamanio")
names(Mediana_CH) <- c("fecha", "pais", "ingresos", "costos", "porcentaje_mujeres", "exportaciones",
                       "importaciones","endeudamiento", "morosidad", "reservas", "spread", "tasa_interes", "tamanio")
names(Mediana_CO) <- c("fecha", "pais", "ingresos", "costos", "porcentaje_mujeres", "exportaciones",
                       "importaciones","endeudamiento", "morosidad", "reservas", "spread", "tasa_interes", "tamanio")
names(Mediana_PE) <- c("fecha", "pais", "ingresos", "costos", "porcentaje_mujeres", "exportaciones",
                       "importaciones","endeudamiento", "morosidad", "reservas", "spread", "tasa_interes", "tamanio")
names(Micro_CH) <- c("fecha", "pais", "ingresos", "costos", "porcentaje_mujeres", "exportaciones",
                       "importaciones","endeudamiento", "morosidad", "reservas", "spread", "tasa_interes", "tamanio")
names(Micro_CO) <- c("fecha", "pais", "ingresos", "costos", "porcentaje_mujeres", "exportaciones",
                     "importaciones","endeudamiento", "morosidad", "reservas", "spread", "tasa_interes", "tamanio")
names(Micro_PE) <- c("fecha", "pais", "ingresos", "costos", "porcentaje_mujeres", "exportaciones",
                     "importaciones","endeudamiento", "morosidad", "reservas", "spread", "tasa_interes", "tamanio")
names(Pequena_CH) <- c("fecha", "pais", "ingresos", "costos", "porcentaje_mujeres", "exportaciones",
                     "importaciones","endeudamiento", "morosidad", "reservas", "spread", "tasa_interes", "tamanio")
names(Pequena_CO) <- c("fecha", "pais", "ingresos", "costos", "porcentaje_mujeres", "exportaciones",
                     "importaciones","endeudamiento", "morosidad", "reservas", "spread", "tasa_interes", "tamanio")
names(Pequena_PE) <- c("fecha", "pais", "ingresos", "costos", "porcentaje_mujeres", "exportaciones",
                     "importaciones","endeudamiento", "morosidad", "reservas", "spread", "tasa_interes", "tamanio")


############################## PREGUNTA 2: GENERAR UNA SOLA BASE DE DATOS #########################################

Empresas <- Grandes_CH%>% union_all(Grandes_CO)%>% union_all(Grandes_PE)%>% union_all(Mediana_CH)%>%
  union_all(Mediana_CO)%>% union_all(Mediana_PE)%>% union_all(Micro_CH)%>% union_all(Micro_CO)%>%
  union_all(Micro_PE)%>% union_all(Pequena_CH)%>% union_all(Pequena_CO)%>% union_all(Pequena_PE)

#Empresas$fecha <- as.Date(Empresas$fecha, format = "%d,%m,%Y")
str(Empresas)

# TIPOLOGIA
#   FECHA: Era un character, que se debe cambiar a fecha
#   PAIS:  Es un character.
#   INGRESOS: Es numeric.
#   COSTOS: Es numeric.
#   PORCENTAJE_MUJERES:Es numeric.
#   EXPORTACIONES: Es numeric.
#   IMPORTACIONES: Es numeric.
#   ENDEUDAMIENTO: Es numeric.
#   MOROSIDAD: Es numeric.
#   RESERVAS: Es numeric.
#   SPREAD: Es numeric.
#   TASA_INTERES: Es numeric.
#   TAMANIO: Es un character.

################# PREGUNTA 3: Determinar cant de obs de Chile y Peru
{cant_obs_chile <- 0
cant_obs_peru <- 0


for(observaciones in 1:length(Empresas$pais)){
  if(Empresas$pais[observaciones] == "chile"){
    cant_obs_chile <- cant_obs_chile+1
  }else if(Empresas$pais[observaciones]== "peru"){
    cant_obs_peru <- cant_obs_peru+1
  }
  
} 
print(paste("Hay", cant_obs_chile, "observaciones para Chile"))
print(paste("Hay", cant_obs_peru, "observaciones para Peru"))
}

############### PREGUNTA 4: Det pais con mayor ingresos de explotacion para los
###############             anos que considera la muestra
{ing_exp_ch <- 0
ing_exp_pe <- 0
ing_exp_co <- 0

for (observaciones in 1:length(Empresas$ingresos)){
  if(Empresas$pais[observaciones] =="chile"){
    ing_exp_ch <- ing_exp_ch+Empresas$ingresos[observaciones]
  }else if(Empresas$pais[observaciones]=="peru"){
      ing_exp_pe <- ing_exp_pe+Empresas$ingresos[observaciones]
    }else if(Empresas$pais[observaciones]=="colombia"){
      ing_exp_co <- ing_exp_co+Empresas$ingresos[observaciones]
    }
} 
if(ing_exp_ch>ing_exp_co && ing_exp_ch>ing_exp_pe){
  print(paste("El pais con mayor ingresos por explotacion es Chile con", ing_exp_ch, "millones de dolares"))
}else if(ing_exp_co>ing_exp_ch && ing_exp_co>ing_exp_pe){
  print(paste("El pais con mayor ingresos por explotacion es Colombia con", ing_exp_co, "millones de dolares"))
}else if(ing_exp_pe>ing_exp_ch && ing_exp_pe>ing_exp_co){
  print(paste("El pais con mayor ingreso por explotacion es Peru con", ing_exp_pe, "millones de dolares"))
}

}


############### PREGUNTA 5: generar variable si el pais es:
#               - CHILE:    Tasa de interes * 0.1
#               - PERU:     Tasa de interes + 0.3
#               - COLOMBIA: Tasa de interes /10

columna <- c()
Empresas <- cbind(Empresas, columna)
for(observaciones in 1:length(Empresas$pais)){
  if(Empresas$pais[observaciones]=="chile"){
    Empresas$columna[observaciones] <- Empresas$tasa_interes[observaciones] * 0.1
  }else if(Empresas$pais[observaciones] =="peru"){
    Empresas$columna[observaciones] <- Empresas$tasa_interes[observaciones] + 0.3
  }else if (Empresas$pais[observaciones] == "colombia"){
    Empresas$columna[observaciones] <- Empresas$tasa_interes[observaciones]/10
  }
  }

############# PREGUNTA 6: Reemplazar en la columna exportaciones cuando. Redondear
#############             al primer decimal la variable

#            Exp > 2.1 <- 1
#            Exp < 2.1 <- 2
#            Exp = 2.1 <- 3
Empresas$exportaciones <- round(Empresas$exportaciones,1) 

for (observaciones in 1:length(Empresas$exportaciones)){
  if(Empresas$exportaciones[observaciones] > 2.1){
    Empresas$exportaciones[observaciones] <- 1
  }else if(Empresas$exportaciones[observaciones]< 2.1){
    Empresas$exportaciones[observaciones] <- 2
  }else if(Empresas$exportaciones[observaciones] == 2.1){
    Empresas$exportaciones[observaciones] <- 3
  }
}



############ PREGUNTA 7: Grafique algunas variables que puedan responder a una pregunta
############             que se haga con respecto a los datos

## grafico 1: Ver la diferencia de ingresos en cada pais segun el tamaño de la empresa

ggplot(data=Empresas, aes(x=tamanio, y=ingresos, fill=pais)) +
  geom_bar(position = "dodge", stat = "identity") + 
  ggtitle("Ingresos de empresas por tamanio y pais")


## grafico 2: ver la evolucion de los ingresos por pais

Empresa2 <- Empresas
Empresa2$fecha <- as.Date(Empresa2$fecha, format="%d-%m-%Y")
  
ggplot(data = Empresa2, aes(x=fecha, y=ingresos, group = pais, color= pais)) +
  geom_line() + ggtitle("Evolucion de los ingresos de las empresas por pais")






