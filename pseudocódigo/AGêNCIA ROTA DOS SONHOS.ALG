Algoritmo "Ag�ncia Rota dos Sonhos"
//Nome: Luziete marques dos reis

Var
   // Se��o de Declara��es das vari�veis
   menu : caracter
   clientes : vetor [0..10] de caracter
   idade: vetor[0..100] de inteiro
   destinos : vetor [0..10] de caracter
   cidades:vetor[0..10] de caracter

   // se��o menu

procedimento menu()
inicio

   Escreval("1- Cadastrar Cliente.")
   Escreval("2- Cadastrar Destino.")
   Escreval("3- Pesquisar Cliente.")
   Escreval("4- Pesquisar Destino.")
   leia(menu)
fimprocedimento
// se��o cadastro do cliente

procedimento cadastroDoCliente()
var
   i : inteiro
inicio

   para i de 0 ate 10 faca
      se clientes[i] = "" entao
         escreval("Nome:")
         leia(clientes[i])
         escreval("Idade:")
         leia(idade[i])
         interrompa
      fimse
   fimpara
fimprocedimento

//se��o  cadastro de destino

procedimento destinoCadastrado()
var
   i : inteiro
inicio

   para i de 0 ate 10 faca
      se destinos[i] = "" entao
         escreval("--")
         escreval("----Destino----")
         leia(destinos[i])
         escreval("----Cidade--do--destino-----")
         escreval("--")
         leia(cidades[i])

         interrompa
      fimse
   fimpara
fimprocedimento


// se��o procurando cliente cadastrado

procedimento informacaoDoCliente()
var

   pesquisarCliente : caracter
   infor,i : inteiro
inicio

   escreval("Informe o nome do cliente que voc� est� procurando:")
   leia( pesquisarCliente)

   para i de 0 ate 10 faca
      se clientes[i] =  pesquisarCliente entao
         infor <- i
         interrompa
      fimse
   fimpara
   se infor = -1 entao
      escreval("Cliente n�o cadastrado!")
   senao
      escreval("O cliente que voc� est� procurando est� na posi��o: ", infor)

   fimse
fimprocedimento

// se��o destino

procedimento procuraDestino()
var

   pesquisaPorNome : caracter
   acessarInf,i: inteiro
inicio

   escreval("Digite o destino que voc� est� procurando:")
   leia(pesquisaPorNome)

   para i de 0 ate 10 faca
      se destinos[i] = pesquisaPorNome entao
         acessarInf <- i
         interrompa
      fimse
   fimpara
   se  acessarInf = -1 entao
      escreval("N�o foi poss�vel encontra o destino!")
   senao
      escreval("O destino que vo�� procura est� na posi��o: ",  acessarInf)

   fimse
fimprocedimento



Inicio
   // Se��o menu

   escreval("Bem vindo(a)a Rotas dos Sonhos!")
   repita
      menu()
      escolha menu
      caso "1"
         cadastroDoCliente()
      caso "2"
         destinoCadastrado()
      caso "3"
         informacaoDoCliente()
      caso "4"
         procuraDestino()
      outrocaso
         escreval("Opcao inv�lida")
      fimescolha
   ate menu = "5"

Fimalgoritmo