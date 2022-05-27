programa
{/*Desenvolver um algoritmo que leia a
altura de 15 pessoas. Este programa 
deverá calcular e mostrar:
a. A menor altura do grupo;
b. A maior altura do grupo;
*/
	
	funcao inicio()
	{    
	     inteiro contador =0
		real a=0.,b=0.,c=0.
		//a é menor e c é maior
		escreva("\n diga o valor da altura: ")
		leia(a)
		enquanto(contador<14){

		 escreva("\n diga o valor da altura: ")
		 
		 leia(b)
		 
		 se(a > b e a > c){
		 	c = a
		 	
		 }
		 se(a < b e c < b){
		 	c = b
		 }

		 se(b < a)
		 a=b
		 
		 contador++
		}

		
		escreva("\n menor é ",a," o maior é ",b)

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 349; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */