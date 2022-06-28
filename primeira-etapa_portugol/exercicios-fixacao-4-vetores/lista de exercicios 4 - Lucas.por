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
		inteiro num[5]

		para(inteiro i=0; i < 5; i++){
			escreva("\n Digite um número: ")
			leia(num[i])
		}
		para(inteiro i=0; i < 5; i++){
			se(num[i] == 2 ou num[i] == 3 ou num[i] == 5 ou num[i] == 7 ou num[i] == 11){
				escreva("\n",num[i])
			}senao se(num[i]%2 != 0 e num[i]%3 != 0 e num[i]%5 != 0 e num[i]%7 != 0 e num[i]%11 != 0 e num[i] !=1){
				escreva("\n",num[i])
			}
		}
	}
	funcao exe2(){
		/*Faça um algoritmo que peça ao usuário que informe oito números 
		inteiros e os armazene-os em um vetor. Apresente o maior elemento 
		e a posição em que ele se encontra no vetor.*/

		inteiro num[8], a=0, b=0, indice=0

		para(inteiro i=0; i < 8; i++){
			escreva("\n Digite um número: ")
			leia(num[i])
		}
			a = num[0] 
		para(inteiro i=1; i < 8; i++){
			b = num[i]
			se(b > a){
				a = b
				indice = i
			}
		}
		escreva("\n O maior número é: ",a," e sua posição é: ",indice)
	}
	funcao exe3(){
		/*Faça um algoritmo que peça ao usuário que informe 10 números 
		 * inteiros e armazene-os em um vetor. A seguir, apresente a 
		 * multiplicação de todos os elementos pares e a soma de todos 
		 * os elementos ímpares. Exemplo:*/

		 inteiro num[10], multi, soma

		 para(inteiro i=0; i < 10; i++){
		 	escreva("\n Digite um número:")
		 	leia(num[i])
		 }

			soma = 0
			multi = 1
		 	
		 para(inteiro i=0; i < 10; i++){
		 	se(num[i]%2 == 0){
		 		multi = num[i]*multi
		 	}senao{
		 		soma += num[i]
		 	}
		 }
		 	se(multi == 1){
		 		multi = 0
		 	}
		 	escreva("\n A soma dos ímpares é: ",soma," a multiplicação dos pares é: ",multi)
	}
	funcao exe4(){
		/*Faça um algoritmo que leia e mostre um vetor de 5 números inteiros.
		A seguir, inverta os valores desse vetor, trocando o primeiro elemento
		pelo último, segundo pelo penúltimo, e assim sucessivamente exibindo
		novamente o vetor invertido. Exemplo: */

		inteiro num[5], numm[5], ii=4

		 para(inteiro i=0; i < 5; i++){
		 	escreva("\n Digite um número:")
		 	leia(num[i])
		 }
		  para(inteiro i=0; i < 5; i++){
			numm[i] = num[ii]		  	
		  	ii--
		  	escreva(numm[i])
		  }
	}
	funcao exe5(){
		inteiro lista[10], num

		para(inteiro i=0; i < 10; i++){
			escreva("\n Digite um número:")
			leia(lista[i])
		}
		
		escreva("\n Digite outro número:")
		leia(num)
		escreva("\n Os números divisíveis por ",num," são: ")
		
		para(inteiro i=0; i < 10; i++){
			se(lista[i] % num == 0){
				escreva("\n",lista[i])
			}
		}
	}
	funcao exe6(){
		inteiro lista[5], soma=0

		para(inteiro i=0; i < 5; i++){
			escreva("\n Digite um número:")
			leia(lista[i])
			soma += lista[i]
		}
		escreva("\nA soma é:",soma,"\n As parcelas são:")
		para(inteiro i=0; i < 5; i++){
			escreva("\n",lista[i])
		}
	}
	funcao exe7(){
		cadeia lista[5]

		para(inteiro i=0; i < 5; i++){
			escreva("\nDigite um nome:")
			leia(lista[i])
			
		}
		para(inteiro i=0; i < 5; i++){
			escreva("\n",lista[i])
			
		}
		para(inteiro i=4; i >= 0; i--){
			escreva("\n",lista[i])
			
		}
	}
	funcao exe8(){
		cadeia meses[12]
		inteiro mes

		meses[0] = "Janeiro"
		meses[1] = "Fevereiro"
		meses[2] = "Março"
		meses[3] = "Abril"
		meses[4] = "Maio"
		meses[5] = "Junho"
		meses[6] = "Julio"
		meses[7] = "Agosto"
		meses[8] = "Setembro"
		meses[9] = "Outubro"
		meses[10] = "Novembro"
		meses[11] = "Dezembro"

		para(inteiro i=0; i < 12; i++){
			escreva("\nDigite um número:")
			leia(mes)

			se(mes == 0 ou mes > 12){
				escreva("inválido!")
				pare
			}

			mes--
			
			escreva("\n",meses[mes])
		}
		
	}
	funcao exe9(){
		inteiro num[51]

		para(inteiro i=0; i < 51; i++){
			num[i] = i
		}
		para(inteiro i=0; i < 51; i++){
			escreva("\n",num[i])
		}
	}
	funcao exe10(){
		inteiro num[10]

		para(inteiro i=0; i < 10; i++){
			escreva("\nDigite um número:")
			leia(num[i])
			num[i] *= num[i] 
		}
		para(inteiro i=0; i < 10; i++){
			escreva("\n",num[i])
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 137; 
 * @DOBRAMENTO-CODIGO = [16, 31, 52, 80, 98, 116, 129, 146, 178, 188];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */