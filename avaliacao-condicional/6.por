programa
{
	
	funcao inicio()
	{
		cadeia sex
		real alt,idl
		
		escreva("qual seu sexo?(masculino/feminino) \n")
		leia(sex)
		escreva("qual sua altura?(em metros) \n")
		leia(alt)
		se(sex == "masculino"){
			idl = alt * 72.7 - 58 
		}
		senao{
			idl = alt * 62.1 - 44.7
		}
		escreva("seu peso ideal é: \n",idl," Kg!")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 328; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */