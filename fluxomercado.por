programa {
  cadeia descricoesReceitas[5]
  cadeia dataEhoraReceitas[5]
  real valorpositivo[5]
  cadeia descricoesDespesas[5]
  cadeia dataEhoraDespesas[5]
  real valornegativo[5]
  inteiro contadorReceitas = 0
  inteiro contadorDespesas = 0
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
          adicionarDespesa()
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

  funcao adicionarReceita(){
    se(contadorReceitas < 5){
      escreva("Digite a descrição\n")
      leia(descricoesReceitas[contadorReceitas])
      escreva("Digite a data e hora\n")
      leia(dataEhoraReceitas[contadorReceitas])
      escreva("Digite o valor\n")
      leia(valorpositivo[contadorReceitas])
      contadorReceitas = contadorReceitas + 1
    }senao{
      escreva("Limite de receitas atingido.\n")
    }
  }

  funcao adicionarDespesa(){
    se(contadorDespesas < 5){
      escreva("Digite a descrição\n")
      leia(descricoesDespesas[contadorDespesas])
      escreva("Digite a data e hora\n")
      leia(dataEhoraDespesas[contadorDespesas])
      escreva("Digite o valor\n")
      leia(valornegativo[contadorDespesas])
      contadorDespesas = contadorDespesas + 1
    }senao{
      escreva("Limite de despesas atingido.\n")
    }
  }

  funcao fluxoDeCaixa(){
    escreva("Fluxo de Caixa:\n")
    para (inteiro i = 0; i < contadorReceitas; i++){
      escreva("Receita: ", descricoesReceitas[i], " - ", dataEhoraReceitas[i], " - Valor: ", valorpositivo[i], "\n")
    }
    para (inteiro i = 0; i < contadorDespesas; i++){
      escreva("Despesa: ", descricoesDespesas[i], " - ", dataEhoraDespesas[i], " - Valor: ", valornegativo[i], "\n")
    }
  }

  funcao saldoAtual(){
    saldo = 0
    para (inteiro i = 0; i < contadorReceitas; i++){
      saldo = saldo + valorpositivo[i]
    }
    para (inteiro i = 0; i < contadorDespesas; i++){
      saldo = saldo - valornegativo[i]
    }
    escreva("Saldo Atual: ", saldo, "\n")
  }
}