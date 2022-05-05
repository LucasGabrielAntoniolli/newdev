programa
{
	
	funcao inicio()
	{
		cadeia jogo[3][3]
		inteiro i=0, linha=0, coluna=0

		jogo[0][0] = " "
		jogo[0][1] = " "
		jogo[0][2] = " "
		jogo[1][0] = " "
		jogo[1][1] = " "
		jogo[1][2] = " "
		jogo[2][0] = " "
		jogo[2][1] = " "
		jogo[2][2] = " "

		enquanto(i==0){
			escreva("---0--1--2")
			escreva("\n0-|",jogo[0][0],"  ",jogo[0][1],"  ",jogo[0][2])
			escreva("\n1-|",jogo[1][0],"  ",jogo[1][1],"  ",jogo[1][2])
			escreva("\n2-|",jogo[2][0],"  ",jogo[2][1],"  ",jogo[2][2],"\n")
			
			escreva("Jogador um!")
			escreva("\nDigite a linha!")
			leia(linha)
			escreva("\nDigite a coluna")
			leia(coluna)

			se(jogo[linha][coluna] == " "){
				jogo[linha][coluna] = "X"
				
				}senao{ 
				escreva("\nPosição Ocupada!")
				escreva("\nDigite a linha!")
				leia(linha)
				escreva("\nDigite a coluna")
				leia(coluna)
			}

			limpa()

			se(jogo[0][0]=="X" e jogo[0][1]=="X" e jogo[0][2]=="X" ou
			jogo[1][0]=="X" e jogo[1][1]=="X" e jogo[1][2]=="X" ou 
			jogo[2][0]=="X" e jogo[2][1]=="X" e jogo[2][2]=="X" ou
			jogo[0][0]=="X" e jogo[1][0]=="X" e jogo[2][0]=="X"ou
			jogo[0][1]=="X" e jogo[1][1]=="X" e jogo[2][1]=="X" ou
			jogo[0][0]=="X" e jogo[1][1]=="X" e jogo[2][2]=="X" ou
			jogo[0][0]=="X" e jogo[1][1]=="X" e jogo[2][2]=="X" ou
			jogo[0][2]=="X" e jogo[1][1]=="X" e jogo[2][0]=="X")
			
			{
				escreva("\njogador um venceu!\n")
				pare
			}

			

			escreva("---0--1--2")
			escreva("\n0-|",jogo[0][0],"  ",jogo[0][1],"  ",jogo[0][2])
			escreva("\n1-|",jogo[1][0],"  ",jogo[1][1],"  ",jogo[1][2])
			escreva("\n2-|",jogo[2][0],"  ",jogo[2][1],"  ",jogo[2][2],"\n")
			
			escreva("\nJogador dois!")
			escreva("\nDigite a linha!")
			leia(linha)
			escreva("\nDigite a coluna")
			leia(coluna)

			se(jogo[linha][coluna] == " "){
				jogo[linha][coluna] = "O"
				
				}senao{ 
				escreva("\nPosição Ocupada!")
				escreva("\nDigite a linha!")
				leia(linha)
				escreva("\nDigite a coluna")
				leia(coluna)
			}

			limpa()

			se(jogo[0][0]=="O" e jogo[0][1]=="O" e jogo[0][2]=="O" ou
			jogo[1][0]=="O" e jogo[1][1]=="O" e jogo[1][2]=="O" ou 
			jogo[2][0]=="O" e jogo[2][1]=="O" e jogo[2][2]=="O" ou
			jogo[0][0]=="O" e jogo[1][0]=="O" e jogo[2][0]=="O"ou
			jogo[0][1]=="O" e jogo[1][1]=="O" e jogo[2][1]=="O" ou
			jogo[0][0]=="O" e jogo[1][1]=="O" e jogo[2][2]=="O" ou
			jogo[0][0]=="O" e jogo[1][1]=="O" e jogo[2][2]=="O" ou
			jogo[0][2]=="O" e jogo[1][1]=="O" e jogo[2][0]=="O")
			
			{
				escreva("\njogador um venceu!\n")
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
 * @POSICAO-CURSOR = 1768; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */