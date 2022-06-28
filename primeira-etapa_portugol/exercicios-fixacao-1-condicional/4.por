programa
{
//Faça um programa que mostre uma contagem na tela de 233 a 456,
//só que contando a cada 3(valor + 3), quando estiver entre 300 
//e 400 e a cada 5(valor+5) quando não estiver.
	
	funcao inicio()
	{
		inteiro num = 233
		
		faca{
			se(num >=300 e num <=400){
				escreva(num,"\n")
				num = num + 3
			}senao{
				escreva(num,"\n")
				num = num + 5
				}
		}enquanto(num<456)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 333; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */