programa
{
/*1- A prefeitura de uma cidade fez uma pesquisa entre 20 de seus habitantes, 
 * coletando dados sobre o salário e número de filhos.


A prefeitura deseja saber:
a) média do salário da população; 
b) média do número de filhos; 
c) maior salário;
d) percentual de pessoas com salário até R$100,00.

*/
	
	funcao inicio()
	{
		real sal =0.,som =0.,med =0.,mai =0.,perc =0.,medfi =0.,numfi =0.,somfi=0.
		

		para(inteiro i=0; i <= 19; i++){
			escreva("\n diga o salário: ")
			leia(sal)
			som = som + sal
			
			se(sal > mai){
				mai = sal
			}
			se(sal <= 100){
				perc = perc +1
			}
			
			escreva("\n escreva o número de filhos: ")
			leia(numfi)
			somfi = somfi + numfi
		}

			med = som / 20
			perc = (perc * 100)/20
			medfi = somfi / 20

			
			escreva("\n A média do salário é: ",med," A média de número de filhos é: ",medfi)
			escreva("\n O maior salário é: ",mai)
			escreva("\n O percentual de pessoas com o salário de até R$100,00 é: ",perc,"%")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 766; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */