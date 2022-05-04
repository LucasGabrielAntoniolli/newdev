programa
{
	
	funcao inicio()
	{	inteiro vetor[2]
		inteiro matriz[2][2]

		//posicionando um número na matriz
		matriz[0][1] = 10
		matriz[1][1] = 5
		matriz[0][0] = 1
		matriz[1][0] = 2

		//percorrendo linhas
		//lembrar de sempre mudar a variável de imcremento
		para(inteiro linha=0; linha < 2; linha++){
				
				//percorrendo colunas
				para(inteiro coluna=0; coluna < 2; coluna++){
					escreva(", ",matriz[linha][coluna])

				}
		}
		limpa()

		cadeia alunos[] = {"Bruno", "João", "Maria"}
		//aqui criamos um vetor onde possui 4 nomes 0,1,2,3

		real notas[3][3] = {
					{6.,8.,9.},
					{3.,4.,5.}, 
					{6.,7.,8.}
			}

		real media[3]

		para(inteiro linha=0; linha < 3; linha++){
			 real soma=0.
			para(inteiro coluna=0; coluna < 3; coluna++){
				
				 soma += notas[linha][coluna]
			}
			 media[linha] = soma/3
		}

		inteiro numeros[2][2]

		para(inteiro l=0; l < 2; l++){
			
			para(inteiro i=0; i < 2; i++){
				escreva("Digite um número: ")
				leia(numeros[l][i])
			}
		}
	}			
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 861; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {numeros, 46, 10, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */