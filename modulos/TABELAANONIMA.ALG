Algoritmo "tabelaanonima"
// 
//  
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 14/4/2022
Var







PROCEDIMENTO tabelaAnonima()
Inicio
//Atribui "#" para todas as 'celulas' da tabela_anonima
//Testa se foi o primeiro movimento do jogo
SE municao = 5 ENTAO
     PARA linha DE 1 ATE 5 FACA
           PARA coluna DE 1 ATE 5 FACA
                 tabela_anonima[linha,coluna] <- "#"
           FIMPARA
     FIMPARA
FIMSE

//Desenha a tabela_anonima
ESCREVAL(" X  1  2  3  4  5")
ESCREVAL("")

PARA linha DE 1 ATE 5 FACA
     PARA coluna DE 1 ATE 5 FACA

          SE (coluna = 1) ENTAO
             ESCREVA(linha,"  ",tabela_anonima[linha,coluna],"  ")
          FIMSE

          //Quebra de linha
          SE (coluna = 5) ENTAO
             ESCREVAL(tabela_anonima[linha,coluna]," ")
             ESCREVAL("")
          FIMSE


          //Gambiarra pois por algum motivo o "e"(logico) não quer funcionar
          SE (coluna > 1) ENTAO
             SE (coluna < 5) ENTAO
                ESCREVA (tabela_anonima[linha,coluna],"  ")
             FIMSE
          FIMSE

     FIMPARA
FIMPARA
FIMPROCEDIMENTO






Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 


Fimalgoritmo