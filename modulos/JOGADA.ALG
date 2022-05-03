Algoritmo "jogada"

Var






PROCEDIMENTO jogada()
 var
 Inicio
 ENQUANTO (municao > 0) FACA   //Testa se há jogadas para fazer.
    ESCREVAL("DEFINA AS COORDENADAS DO DISPARO...")

    //requisita a linha
    ESCREVAL("")
    ESCREVAL("#################")
    ESCREVAL("Linha")
    ESCREVAL("")
    LEIA(linha)

    //requisita a coluna
    ESCREVAL("Coluna")
    ESCREVAL("")
    LEIA(coluna)

    LIMPATELA

    //Se acertar
    SE (tabela_bin[linha,coluna] = 1) ENTAO  //
         tabela_anonima[linha,coluna] <- "O" //muda o output de
         ESCREVAL("ACERTOU!!!")              //# para O
         ESCREVAL("")                        //
         pontuacao <- pontuacao + 1

    //Se errar
    SENAO
         ESCREVAL("SPLASH...")               //
         tabela_anonima[linha,coluna] <- "X" //muda o output de
    FIMSE                                    //# para X

    municao <- municao - 1      //Gasta um disparo

    //OUTPUT dos pontos
    SE pontuacao = 1 ENTAO
       ESCREVAL (pontuacao, " ponto")
    SENAO
       ESCREVAL (pontuacao, " pontos")
    FIMSE


    //OUTPUT da munição
    SE municao >1 ENTAO
       ESCREVAL ("Restam:", municao, " Disparos")
    SENAO
         ESCREVAL ("Resta:", municao, " Disparo")
    FIMSE

    ESCREVAL("")

    tabelaAnonima()
 FIMENQUANTO
    fim()
FIMPROCEDIMENTO






Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 


Fimalgoritmo