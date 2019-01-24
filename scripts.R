





















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
colnames(mt_bioma) <- c('Em Km²','Em Km²','Em Km²')


