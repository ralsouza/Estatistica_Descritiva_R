




labels <-  c('Total do Bioma', 'Área Remanescente','Área Antroponizada')

piepercent<- round(100*mt_bioma[1,]/sum(mt_bioma[1,]), 1)

# Plot the chart.
pie(mt_bioma[1,],
    labels = piepercent,
    main = "Percentual das Áreas Totais",
    radius = 2,
    col = rainbow(length(mt_bioma[1,])))

legend("topright", c('Total do Bioma', 'Área Remanescente','Área Antroponizada'), cex = 0.9,
       fill = rainbow(length(mt_bioma[1,])))



par(lwd = 1)





# Criação de um objeto do tipo matriz(7x4), para armazenar os dados dos acidentes.
mt_bioma <- matrix(c(176496, 6210, 3340, 1607, 122682, 20974, 7658, 14025,
                     103835, 0   , 0   , 428 , 10980 , 2033 , 394 , 0    ,
                     58636 , 6210, 3340, 1179, 21702 , 18940, 7264, 0   ),
                   nrow = 8,
                   ncol = 3)

# Nomeando os nomes das variáveis e observações. 
row.names(mt_bioma) <- c('Área Total',
                         'Floresta Estacional Semidecidual',
                         'Floresta Estacional Decidual',
                         'Savana Estépica',
                         'Estepe',
                         'Formações pioneiras',
                         'Contatos entre tipos de vegetação',
                         'Superfície com água')
colnames(mt_bioma) <- c('Total do bioma (Km²)','Área remanescente (Km²)','Área antroponizada (Km²)')

