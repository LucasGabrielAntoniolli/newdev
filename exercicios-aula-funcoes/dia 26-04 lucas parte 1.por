programa
{
	funcao inicio(){
		//exe1()
		escreva(nome("Lucas","Gabriel"))
	}

	
	funcao exe1()
	{	
		inteiro numeros[4]
		para(inteiro i=0; i < 4; i++){
			escreva("digite um número: \n")
			leia(numeros[i])
			media(numeros[0],numeros[1],numeros[2],numeros[3])
		}
	}
	
	
	
	funcao inteiro media(inteiro n1,inteiro n2,
	inteiro n3, inteiro n4)
	{
		inteiro mediaa=0

		mediaa = (n1 + n2 + n3 + n4)/4
		retorne 0
	}
	
	
	
	funcao cadeia nome(cadeia primeiro, cadeia segundo){

		retorne (primeiro + " " + segundo)
		
	} 
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 527; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */