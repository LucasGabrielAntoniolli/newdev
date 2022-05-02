programa
{
	
	funcao inicio()
	{
		inteiro numPar[10], 
		        numImpar[10],
		        numDigitado=0,
		        contaPar=0,
		        contaImpar=0
		
		enquanto(contaPar + contaImpar < 10){
			escreva("---Digite um número---")
			leia(numDigitado)

			se(numDigitado % 2 == 0){
				numPar[contaPar] = numDigitado
				contaPar++
				
			}senao{
				numImpar[contaImpar] = numDigitado
				contaImpar++
				
			}
		}

		listaPares(numPar, contaPar)
		listaImpares(numImpar, contaImpar)
	}

	funcao listaPares(inteiro numPar[], inteiro contaPar){
		inteiro copia=0
				
		para(inteiro j=0; j < contaPar; j++){
			para(inteiro i=0; i < contaPar - 1; i++){
				se(numPar[i] > numPar[i+1]){
				copia = numPar[i]
				numPar[i] = numPar[i+1]
				numPar[i+1] = copia  
				}
			}
		}
		para(inteiro a=0; a < contaPar; a++){
			escreva(" ",numPar[a])
			
		}
		escreva("\n")
	}

	funcao listaImpares(inteiro numImpar[], inteiro contaImpar){
		inteiro copia=0
		
		para(inteiro j=0; j < contaImpar; j++){
			para(inteiro i=0; i < contaImpar - 1; i++){
				se(numImpar[i] < numImpar[i+1]){
				copia = numImpar[i]
				numImpar[i] = numImpar[i+1]
				numImpar[i+1] = copia  
				}
			}
		}
		para(inteiro a=0; a < contaImpar; a++){
			escreva(" ",numImpar[a])
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1042; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {numPar, 6, 10, 6}-{numImpar, 7, 10, 8};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */