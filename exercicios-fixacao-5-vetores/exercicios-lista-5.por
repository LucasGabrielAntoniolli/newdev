programa
{
	
	funcao inicio()
	{
		//exe1()
		//exe2()
		//exe3()
		//exe4()
		//exe5()
		//exe6()
		//exe7()
		//exe8()
		//exe9()
		//exe10()
	}

	funcao exe1(){
		inteiro fibonacci[40] 

		fibonacci[0] = 1
		fibonacci[1] = 1

		 para(inteiro i=2; i < 40; i++){
		 	fibonacci[i] = fibonacci[i-1] + fibonacci[i-2] 
		 }
		 
		 para(inteiro i=0; i < 40; i++){
		 	escreva("\n",fibonacci[i])
		 }
		 
	}
	funcao exe2(){
		inteiro vetor[50]

		para(inteiro i=1; i <= 100; i++){
			se(i % 2 == 0){
				vetor[i/2-1] = i
			}
		}
		para(inteiro i=0; i < 50; i++){
			escreva("\n",vetor[i])
		}
	}
	funcao exe3(){
		inteiro vetor[50]

		para(inteiro i=1; i <= 100; i++){
			se(i % 2 != 0){
				vetor[(i-1)/2] = i
			}
		}
		para(inteiro i=0; i < 50; i++){
			escreva("\n",vetor[i])
		}
	}
	funcao exe4(){
		inteiro vetor[10]

		para(inteiro i=0; i < 10; i++){
			escreva("==> Digite um número:")
			leia(vetor[i])
			vetor[i] = vetor[i]*vetor[i]*vetor[i]
			
		}
		para(inteiro i=0; i < 10; i++){
			escreva("\n",vetor[i])
		}
	}
	funcao exe5(){
		real vetor[10], soma=0., media=0.

		para(inteiro i=0; i < 10; i++){
			escreva("=> Digite a altura do atleta <==")
			leia(vetor[i])
			soma += vetor[i]
		}

		media = soma/10

		para(inteiro i=0; i < 10; i++){
			se (vetor[i] >= media){
				escreva("\n",vetor[i])
			}
		}
	}
	funcao exe6(){
		inteiro vetor[10]
		
		para(inteiro i=0; i < 10; i++){
			escreva("# Digite um número:")
			leia(vetor[i])
		}

		para(inteiro i=9; i >= 0; i--){
			escreva("\n",vetor[i])
		}
	}
	funcao exe7(){
		real vetor[10], vetor2[10]

		para(inteiro i=0; i < 10; i++){
			escreva("|| Digite um valor ||")
			leia(vetor[i])
		}
		para(inteiro i=0; i < 10; i++){
			se (i % 2 == 0){
				vetor2[i] = vetor[i]/2
			}senao{
				vetor2[i] = vetor[i]*3
			}
		}
		para(inteiro i=0; i < 10; i++){
			escreva("\n1 vetor A: ",vetor[i]," | vetor B: ",vetor2[i])
		}
	}
	funcao exe8(){
			inteiro numeros[10], pares[10], impares[10], variavel

			para(inteiro i=0; i < 10; i++){
				escreva("~~ Digite um valor ~~")
				leia(numeros[i])
				se(numeros[i] % 2 == 0){
					pares[i] = numeros[i] 
				}senao{
					impares[i] = numeros[i]
				}
			}

			// IMCOMPLETO
			
			para(inteiro i=0; i < 10; i++){
				escreva("\n",pares[i],"   ",impares[i])
			}
	}
	funcao exe9(){
			cadeia nomes[10], procura, 
			 situacao = ""
			
			para(inteiro i=0; i < 10; i++){
				escreva("--Digite um nome--")
				leia(nomes[i])
			}
			escreva("\n Que nome deseja achar?")
			leia(procura)

			para(inteiro i=0; i < 10; i++){
				se(procura == nomes[i]){
					situacao = "achei"
				}
			}
			
			se(situacao == "achei"){
				escreva("> Achei <")
			}senao{
				escreva("Não Achei")
			}
	}
	funcao exe10(){
			inteiro vetor[20], a[10], b[10]

			para(inteiro i=0; i < 20; i++){
				escreva("---Digite um valor---")
				leia(vetor[i])
			}
			para(inteiro i=0; i < 10; i++){
				a[i] = vetor[i]
				b[i] = vetor[i+10]
			}
			para(inteiro i=0; i < 10; i++){
				escreva("\n",a[i]," | ",b[i])
			}
			
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 116; 
 * @DOBRAMENTO-CODIGO = [17, 32, 44, 56, 69, 86, 98, 116, 135, 158];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */