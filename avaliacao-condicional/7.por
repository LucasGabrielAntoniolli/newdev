programa
{
	
	funcao inicio()
	{	
		real p,a,imc
		
		escreva("Diga seu peso:(Kg) \n")
		leia(p)
		escreva("Diga sua altura:(metros) \n")
		leia(a)

          imc = p/(a*a)

          se(imc>30){

			escreva("Obeso! \n")
          	
          }
          senao{

			 se(imc>25){

				 escreva("acima do peso! \n")
				
			         }
			         
			 senao{
			 	 se(imc>18.5){
			 		escreva("peso normal! \n")
			 	            }
			 	            senao{
			 	            	escreva("abaixo do peso")
			 	            }
			     }
          	 
               }
		
	}
}
/*Abaixo de 18,5 Abaixo do peso 
Entre 18,5 e 25 Peso normal 
Entre 25 e 30 Acima do peso 
Acima de 30 obeso

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 131; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */