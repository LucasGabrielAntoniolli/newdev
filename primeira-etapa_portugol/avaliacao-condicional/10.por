programa
{
	
	funcao inicio()
	{

		real com,pag,tro
		inteiro um,dez,cem

		escreva("qual o valor da compra? \n")
		leia(com)
		escreva("quanto é o pagamento? \n")
		leia(pag)

		tro = pag - com
		um=0
		dez=0
		cem=0
		
		se(pag<com){
			escreva("compra negada! \n")
			}
			senao{
				enquanto(tro>=100){
					tro=tro-100
					cem=cem+1
				}enquanto(tro>=10){
					tro=tro-10
					dez=dez+1
					
				}
				enquanto(tro>=1){
					tro=tro-1
					um=um+1
				}
			}
	escreva("o valor de notas de um é: ",um," o valor de notas de dez é: ",dez," o valor de notas de cem é: ",cem)	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 425; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */