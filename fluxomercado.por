programa {
  cadeia descricoes[5]
  cadeia dataEhora[5]
  real valorpositivo[5]
  real valornegativo[5]
  inteiro contador = 0
  real saldo = 0
  inteiro opcao

    funcao inicio(){
      menu()    
    }

    funcao menu(){
      enquanto (opcao != 0){
        escreva("\n1- Adicionar Receita \n2- Adicionar Despesa\n3- Fluxo de Caixa\n4- Saldo Atual\n0 - Sair\n")
        leia(opcao)
        escolha(opcao){
          caso 1:
            adicionarReceita()
            pare
          caso 2:
            AdicionarDespesa()
            pare
          
          caso 3:
            fluxoDeCaixa()
            pare

          caso 4:
            saldoAtual()
            pare

          caso 0:
            escreva("Saindo do programa\n")
            pare

          caso contrario:
            escreva("Opção inválida!\n")
        }
      }
    }

    funcao AdicionarDespesa(){
      se(contador < 5){
        escreva("Digite a descrição\n")
        leia(descricoes[contador])
        escreva("Digite a data e hora\n")
        leia(dataEhora[contador])
        escreva("Digite o valor\n")
        leia(valornegativo[contador])
        contador = contador + 1
      }senao{
          escreva("Limite de receitas atingido.\n")
      }
    }

    funcao fluxoDeCaixa(){
      escreva("Fluxo de Caixa:\n")
      para (inteiro i = 0; i < contador; i++){
        escreva("Receita: ", descricoes[i], " - ", dataEhora[i], " - Valor: ", valornegativo[i], "\n")
      }
    }
}
