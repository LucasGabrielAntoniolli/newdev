programa
{
	
	funcao inicio()
	{
		inteiro numeros[200][3], indice = 0
		//1entrada 2saida 3saldo
		inteiro opcao=0
		cadeia veiculo[200], nome


	enquanto(opcao != 5){

			escreva("\n\n----------------------------------------------------------------\n")
			escreva("-----------------------------------------------editar-----------\n")
			escreva("--------Cadastrar-----consultar-----listar----estoque----Sair---\n")
			escreva("Digite:-----1-------------2-----------3----------4--------5-----\n")
			escreva("----------------------------------------------------------------\n")
			leia(opcao)
		
		escolha(opcao){

			caso 1: 
				
				escreva("\nDigite o nome do veículo: ")
				leia(nome)

				veiculo[indice] = nome
				indice++
							
			pare
			
			caso 2: 
				escreva("\nDigite o nome do veículo a ser consultado")
				leia(nome)

				para(inteiro i=0; i < 200; i++){
					se(veiculo[i] == nome)
					escreva("\nNome: ",veiculo[i]," Saldo: ",numeros[i][2])
				}
			
			pare
			
			caso 3: 

				para(inteiro i=0; i < 200; i++){
					escreva("\nNome: ",veiculo[i]," Saldo: ",numeros[i][2])
				}
			
			pare
			
			caso 4: 
				inteiro opc, quantos
		
				escreva("\nDigite o nome do veículo: ")
				leia(nome)

				para(inteiro i=0; i < 200; i++){
					se(veiculo[i] == nome){
						indice = i
					}
				}

				escreva("\nQuer Retirar carros digite: 1 \nQuer adicionar carros digite: 2")
				leia(opc)

				escreva("\nQuantos carros?")
				leia(quantos)
			
				escolha(opc){
					caso 1:

						numeros[indice][1] += quantos
						numeros[indice][2] = numeros[indice][0] - numeros[indice][1]
					
					pare
					caso 2:

						numeros[indice][0] += quantos
						numeros[indice][2] = numeros[indice][0] - numeros[indice][1] 
					
					pare
				}
			
			pare
			
		}
	}

	}
	

		
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1735; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {numeros, 6, 10, 7}-{indice, 6, 27, 6}-{veiculo, 9, 9, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */