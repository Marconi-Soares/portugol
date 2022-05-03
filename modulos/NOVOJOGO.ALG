Algoritmo "novojogo"
Var








PROCEDIMENTO novoJogo()
 inicio
 pontuacao <-0

 PARA linha DE 1 ATE 5 FACA
      PARA coluna DE 1 ATE 5 FACA
           ALEATORIO ON                          //
              ALEATORIO 0,1                      // DEFINE ALEATORIAMENTE
                                                 // ONDE ESTÃO OS ALVOS
                 LEIA(tabela_bin[linha,coluna])  //
           ALEATORIO OFF                         //
      FIMPARA
 FIMPARA

 LIMPATELA

 municao <- 5
 tabelaAnonima()


 jogada()
FIMPROCEDIMENTO






Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 


Fimalgoritmo