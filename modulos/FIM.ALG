Algoritmo "fim"
Var





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
// Seção de Comandos, procedimento, funções, operadores, etc... 


Fimalgoritmo