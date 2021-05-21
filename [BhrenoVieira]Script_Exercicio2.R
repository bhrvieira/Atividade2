################################################################################
################################################################################
################################################################################
#####################         Análise de Dados             #####################
#####################           Exercícios 2               #####################
#####################              2021.1                  #####################
################################################################################
################################################################################
################################################################################

#### Chamando pacotes ####

library(ff)

library(ffbase)

library(tidyverse)

library(rio)

library(rvest)

#### extraindo as bases ##### 

alunos20 <- read.csv2.ffdf(file = "http://dados.recife.pe.gov.br/dataset/ce5168d4-d925-48f5-a193-03d4e0f587c7/resource/9dc84eed-acdd-4132-9f1a-a64f7a71b016/download/situacaofinalalunos2020.csv")

alunos19 <- read.csv2.ffdf(file = "http://dados.recife.pe.gov.br/dataset/ce5168d4-d925-48f5-a193-03d4e0f587c7/resource/3b03a473-8b20-4df4-8628-bec55541789e/download/situacaofinalalunos2019.csv")


alunos18 <- read.csv2.ffdf(file = "http://dados.recife.pe.gov.br/dataset/ce5168d4-d925-48f5-a193-03d4e0f587c7/resource/8f3196b8-c21a-4c0d-968f-e2b265be4def/download/situacaofinalalunos2018.csv")

alunos17 <- read.csv2.ffdf(file = "http://dados.recife.pe.gov.br/dataset/ce5168d4-d925-48f5-a193-03d4e0f587c7/resource/70c4e6fc-91d2-4a73-b27a-0ad6bda1c84d/download/situacaofinalalunos2017.csv")

alunos16 <- read.csv2.ffdf(file = "http://dados.recife.pe.gov.br/dataset/ce5168d4-d925-48f5-a193-03d4e0f587c7/resource/f42a3c64-b2d7-4e2f-91e5-684dcd0040b9/download/situacaofinalalunos2016.csv")

alunos15 <- read.csv2.ffdf(file = "http://dados.recife.pe.gov.br/dataset/ce5168d4-d925-48f5-a193-03d4e0f587c7/resource/264f0a37-ad1c-4308-9998-4f0bd3c6561f/download/situacaofinalalunos2015.csv")

alunos14 <- read.csv2.ffdf(file = "http://dados.recife.pe.gov.br/dataset/ce5168d4-d925-48f5-a193-03d4e0f587c7/resource/0a2aec2f-9634-4408-bbb4-37e1f9c74aa1/download/situacaofinalalunos2014.csv")

alunos13 <- read.csv2.ffdf(file = "http://dados.recife.pe.gov.br/dataset/ce5168d4-d925-48f5-a193-03d4e0f587c7/resource/95eb9ea8-cd75-4efa-a1ba-ba869f4e92b9/download/situacaofinalalunos2013.csv")

alunos12 <- read.csv2.ffdf(file = "http://dados.recife.pe.gov.br/dataset/ce5168d4-d925-48f5-a193-03d4e0f587c7/resource/f6633c26-be36-4c27-81cb-e77d90316cff/download/situacaofinalalunos2012.csv")

alunos11 <- read.csv2.ffdf(file = "http://dados.recife.pe.gov.br/dataset/ce5168d4-d925-48f5-a193-03d4e0f587c7/resource/9a694ab5-99ab-4ff1-ac6b-c97917c6a762/download/situacaofinalalunos2011.csv")


#### unindo as bases ####

situacao_aluno_rec <- ffdfrbind.fill(alunos11, alunos12, alunos13, alunos14, 
                                     alunos15, alunos16, alunos17, alunos18, 
                                     alunos19, alunos20, clone = TRUE)

#### salvando base de dados ####

setwd("C:/Users/Win10/Documents/GitHub/AnaliseDadosETL/AnaliseDadosETL/AnaliseDadosETL")

saveRDS(situacao_aluno_rec, 'situacao_aluno_rec.rds')

head(situacao_aluno_rec)

#### lipando a staging area

rm(list=ls())


