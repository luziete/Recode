Algoritmo "Agência Rota dos Sonhos"
//Nome: Luziete marques dos reis

Var
   // Seção de Declarações das variáveis
   menu : caracter
   clientes : vetor [0..10] de caracter
   idade: vetor[0..100] de inteiro
   destinos : vetor [0..10] de caracter
   cidades:vetor[0..10] de caracter

   // seção menu

procedimento menu()
inicio

   Escreval("1- Cadastrar Cliente.")
   Escreval("2- Cadastrar Destino.")
   Escreval("3- Pesquisar Cliente.")
   Escreval("4- Pesquisar Destino.")
   leia(menu)
fimprocedimento
// seção cadastro do cliente

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

//seção  cadastro de destino

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


// seção procurando cliente cadastrado

procedimento informacaoDoCliente()
var

   pesquisarCliente : caracter
   infor,i : inteiro
inicio

   escreval("Informe o nome do cliente que você está procurando:")
   leia( pesquisarCliente)

   para i de 0 ate 10 faca
      se clientes[i] =  pesquisarCliente entao
         infor <- i
         interrompa
      fimse
   fimpara
   se infor = -1 entao
      escreval("Cliente não cadastrado!")
   senao
      escreval("O cliente que você está procurando está na posição: ", infor)

   fimse
fimprocedimento

// seção destino

procedimento procuraDestino()
var

   pesquisaPorNome : caracter
   acessarInf,i: inteiro
inicio

   escreval("Digite o destino que você está procurando:")
   leia(pesquisaPorNome)

   para i de 0 ate 10 faca
      se destinos[i] = pesquisaPorNome entao
         acessarInf <- i
         interrompa
      fimse
   fimpara
   se  acessarInf = -1 entao
      escreval("Não foi possível encontra o destino!")
   senao
      escreval("O destino que voçê procura está na posição: ",  acessarInf)

   fimse
fimprocedimento



Inicio
   // Seção menu

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
         escreval("Opcao inválida")
      fimescolha
   ate menu = "5"

Fimalgoritmo