

df_ferimentos_graves <-  data.frame(tipo    = c('Sem Vítimas','Com Ferimentos Graves','Com Ferimentos Leves','Com Mortos'),
                                     media   = apply(mt_acidentes,2, mean),
                                     d.padr  = apply(mt_acidentes,2, sd),
                                     var     = apply(mt_acidentes,2, var),
                                     mediana = apply(mt_acidentes,2, median))

# Remove os nomes das linhas
row.names(df_ferimentos_graves2) <- NULL

# Renomeia os nomes das colunas
colnames(df_ferimentos_graves2) <- c('Tipo','Média','Desvio Padrão', 'Variância', 'Mediana')

library(ggplot2)

ggplot(df_ferimentos_graves, aes(x=tipo, y=media)) + 
  geom_errorbar(aes(ymin=media-d.padr, ymax=media+d.padr), width=.2) +
  geom_line() +
  geom_point()


?kable



