library(tidyverse)
x <- 2 
library(lfe)
  
#DID BIEn
# Estimar el modelo DiD TWFE sin efectos fijos
modelo_did_twfe <- felm(log_Divorcios_imputed ~ Internet | 
                        C_INEGI + year| 0 | C_INEGI, data = Base_final_tratamiento)

# Resumen del modelo 
library(stargazer)
stargazer(modelo_did_twfe, type="text", title="Modelo TWFE")
