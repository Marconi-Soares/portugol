Algoritmo "Batalha_naval_index"
//VERSÃO 1.0
//13/04/2022
//MEU PRIMEIRO PROJETO
//AUTOR: MARCONI SOARES DE JESUS
//Leia a "Documentação"
Var

  //Variáveis simples
  municao, pontuacao : INTEIRO
  linha, coluna :INTEIRO
  menuIndex :INTEIRO
  freio: CARACTERE
  


  //Vetores
  tabela_anonima: VETOR [1..5,1..5] DE CARACTERE
  tabela_bin: VETOR [1..5,1..5] DE INTEIRO



//#########################################################
//               Inicia o menu do jogo


PROCEDIMENTO menu()
    inicio
    ESCREVAL("###########################")
    ESCREVAL("###########################")
    ESCREVAL("")
    ESCREVAL("# 1  -  Iniciar novo jogo")
    ESCREVAL("")
    ESCREVAL("# 2  -  Sair do jogo")
    ESCREVAL("")
    ESCREVAL("###########################")
    ESCREVAL("###########################")
    LEIA(menuIndex)

    ESCOLHA menuIndex
            CASO 1
                 novoJogo()

            CASO 2
                 FIMALGORITMO
    FIMESCOLHA
FIMPROCEDIMENTO
//########################################################



//########################################################
//              Desenha a tabela formada por "#"


PROCEDIMENTO tabelaAnonima()
Var
 //APAGAR

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
//#####################################################



//#####################################################
//                  Inicia um novo jogo


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
//#####################################################



//####################################################
// Algoritmo principal do jogo. É aqui que toda a
// partida acontece.


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
//###########################################################


//###########################################################
//    MOSTRA A TELA DE VITORIA/DERROTA E REINICIA O ALGORITMO
PROCEDIMENTO fim()
    Inicio
    //O JOGADOR SÓ GANHA SE OBTER 3 OU MAIS PONTOS...
    SE pontuacao >=3 ENTAO
      LIMPATELA
      MUDACOR("VERDE","FRENTE")

      ESCREVAL("")
      ESCREVAL("")
      ESCREVAL("##########################################")
      ESCREVAL("     #   #  # #####  ##  ###  #  ##  ")
      ESCREVAL("     #   #  #   #   #  # #  # # #  # ")
      ESCREVAL("      # #   #   #   #  # ###  # #### ")
      ESCREVAL("       #    #   #    ##  #  # # #  # ")
      ESCREVAL("##########################################")
    FIMSE

    SE pontuacao < 3 ENTAO
      LIMPATELA
      MUDACOR("VERMELHO", "FRENTE")

      ESCREVAL("")
      ESCREVAL("")
      ESCREVAL("##########################################")
      ESCREVAL("     ###  ### ###  ###   ##  #####  ##  ")
      ESCREVAL("     #  # #   #  # #  # #  #   #   #  # ")
      ESCREVAL("     #  # ##  ###  ###  #  #   #   #### ")
      ESCREVAL("     ###  ### #  # #  #  ##    #   #  # ")
      ESCREVAL("##########################################")
    FIMSE

    ESCREVA("APERTE ENTER PARA CONTINUAR")
    LEIA(freio) //Variável usada para o jogador decidir quando vai continuar o
                //algoritmo

    LIMPATELA
    MUDACOR("BRANCO","FRENTE")
    
    menu()
FIMPROCEDIMENTO



Inicio
menu()

Fimalgoritmo