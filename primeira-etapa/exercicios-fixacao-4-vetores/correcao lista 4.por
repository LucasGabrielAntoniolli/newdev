programa
{
	
	funcao inicio(){

		//exe2()
		//exe3()
		//exe4()
		//exe5()
	}
	funcao exe2(){

		inteiro numeros[8], maiorposicao = 0, posicao = 0

		para(inteiro i=0; i < 8; i++){
			escreva("-------------Digite um número:")
			leia(numeros[i])
		
		}

		para(inteiro i=0; i < 8; i++){
			se(numeros[i] > maiorposicao){
				maiorposicao = numeros[i]
				posicao = i
			}
		}
		escreva("\n maior numero é: ",maiorposicao," está na posicao: ",posicao)
		
	}
	funcao exe3(){
		inteiro nume[10]
		real multi=1., soma=0.


		para(inteiro i=0; i < 10; i++){
			escreva("-------------Digite um número:")
			leia(nume[i])
		}
		

		para(inteiro i=0; i < 10; i++){
			se (nume[i]%2 == 0) {
				multi = nume[i] * multi
			}senao{
				soma += nume[i]
			}
		}

		se(multi == 1.0){
			multi = 0.0
		}
		
		escreva("-----A multiplicação dos pares é: ",multi)
		escreva("-----A soma dos ímpares é: ",soma)
	}
	funcao exe4(){
		inteiro nume[5], inverso[5]

		para(inteiro i=0; i < 5; i++){
			escreva("----digite um número: ")
			leia(nume[i])
	}	
		inverso[0] = nume[4]
		inverso[1] = nume[3]
		inverso[2] = nume[2]
		inverso[3] = nume[1]
		inverso[4] = nume[0] 
	}
	funcao exe5(){

		inteiro nume[10], num

		escreva("Digite um número:")
		leia(num
		)
		para(inteiro i=0; i < 10; i++){
			escreva("-------------Digite um número:")
			leia(nume[i])
		}
		

		para(inteiro i=0; i < 10; i++){
			se (nume[i] % num == 0) {
				escreva("\n",nume[i]," é divisivel por ",num)
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 74; 
 * @DOBRAMENTO-CODIGO = [10, 29, 55, 68];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */