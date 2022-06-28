programa
{

	/*objetivo do algoritmo:
	 Uma concessionária deseja contratar um desenvolvedor para implementar um programa
	para controlar seu estoque de veículos,
     o mesmo deseja realizar movimentações de estoque (Entrada + e Saída -), 
     também deve ser possível consultar o saldo dos produtos 
     armazenados, informando o código do produto. 
      Essa concessionária, possui um limite de produtos que podem ser 
     armazenados devido o local de armazenamento não suportar mais que 200 veículos,
     sendo assim, deve avisar o funcionário
     que o estoque está cheio quando o mesmo atingir o limite e não deixar adicionar 
     mais veículos a menos que possua local para armazenagem.*/
	
	funcao inicio()
	{	
		inteiro opcao=0, saldo[2000], entrada[2000], saida[2000]
		cadeia produto[2000]
		
		enquanto(0 != 1){
			
			escreva("\nDIGITE----1-----------2----------3-----------4-------------5-\n")
			escreva("------CADASTRAR---CONSULTAR---LISTAR---ALTERAR ESTOQUE---SAÍR\n")
			escreva("-------------------------------------------------------------\n")
			leia(opcao)	
			limpa()

		se(opcao == 5){
			pare
		}

		se(opcao == 1){
			cadastrar(produto, saldo, entrada, saida)
			}

		se(opcao == 2){
			consultar(produto, saldo)
			}

		se(opcao == 3){
			listar(produto, saldo)
			}

		se(opcao == 4){
			editar(produto, entrada, saida, saldo)
			}

		}
	}

	funcao cadastrar(cadeia produto[],inteiro saldo[], inteiro entrada[], inteiro saida[]){
		
		cadeia nome="" 
		inteiro indice=0, condicao

		escreva("\n SE DESEJA REMOVER CADASTRO DIGITE (1) \n SE DESEJA ADICIONAR CADASTRO DIGITE (2)\n")
		leia(condicao)
		limpa()

		se(condicao == 1){
			escreva("\n---DIGITE-O-NOME-DO-PRODUTO-QUE-QUER-REMOVER---\n")
			leia(nome)
			para(inteiro i=0; i < 2000; i++){
				se(nome == produto[i]){
					produto[i] = ""
					saldo[i] = 0
					entrada[i] = 0
					saida[i] = 0
				}
			}
			
		}

		se(condicao == 2){
			escreva("\n---DIGITE O NOME DO PRODUTO---\n")
			leia(nome)
			limpa()

			para(inteiro i=0; i < 2000; i++){
				se(produto[i] == nome){
					escreva("\n---ESSE PRODUTO JÁ EXISTE!---\n")
					pare
				}senao{
				
					para(inteiro j=0; j < 2000; j++){
						se(produto[j] == ""){
							indice = j
							pare
						}
					  
					}
				}
			}

		produto[indice] = nome
		}
	}

	funcao consultar(cadeia produto[], inteiro saldo[]){
		cadeia nome=""

		escreva("\n---DIGITE-O-NOME-DO-PRODUTO---\n")
		leia(nome)
		limpa()

		para(inteiro i=0; i < 2000; i++){
			se(produto[i] == nome){
				escreva("\nCÓDIGO---NOME---SALDO\n")
				escreva("   ",i+1,"      ",produto[i],"      ",saldo[i],"\n")
			}
		}
	}

	funcao listar(cadeia produto[], inteiro saldo[]){
		
			escreva("\nCÓDIGO---NOME---SALDO\n")
				para(inteiro a=0; a < 2000; a++){
					se(produto[a] != "" ou saldo[a] != 0){
			     	 escreva("   ",a+1,"      ",produto[a],"      ",saldo[a],"\n")
				}
			}
		}
	

	funcao editar(cadeia produto[], inteiro entrada[], inteiro saida[], inteiro saldo[]){
		cadeia alteracao, nome
		inteiro quantidade

		escreva("\n---VOCÊ-DESEJA-TIRAR-OU-ADICIONAR-AO-ESTOQUE?---\n")
		escreva("\n|  Adicionar Digite (1)  |  Retirar Digite (2)  |\n")
		leia(alteracao)
		limpa()

		escreva("\nDIGITE O NOME DO PRODUTO\n")
		leia(nome)
		limpa()

		escreva("\nDIGITE QUANTOS CARROS ENTROU OU SAIU\n")
		leia(quantidade)
		limpa()

		para(inteiro i=0; i < 2000; i++){
			se(produto[i] == nome){
				se(alteracao == "1"){
					se(saldo[i] == 200){
						escreva("\n Processo Negado, não cabem mais carros!\n")
					}

					se(entrada[i] + quantidade > 200){
						escreva("\nProcesso Negado, adicionar ",quantidade," carros estrapola a capacidade de estoque!\n")
						pare
					}senao{
					entrada[i] += quantidade
					saldo[i] = entrada[i] - saida[i]
					}
					
				}
		
				se(alteracao == "2"){
					saida[i] += quantidade
					saldo[i] = entrada[i] - saida[i]
				}
			}
		}	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 831; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */