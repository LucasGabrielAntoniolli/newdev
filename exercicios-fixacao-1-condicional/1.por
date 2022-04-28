programa
{
	
	funcao inicio()
	{
		inteiro num =0,soma =0,quan =0,med =0

		enquanto(num>=0){
			escreva("\n diga um número: ")
			leia(num)
			se(num>=0){
				quan++
				soma = soma + num
				med = soma / quan
			}
		}

		escreva("\n a quantidade é ",quan," a soma é ",soma," a média é ",med)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 297; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */