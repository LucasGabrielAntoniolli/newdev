programa{
	
	funcao inicio()
	{
		//exe8()
		//exe9()
		//exe10()
		//exe11()
		//exe14()
		//exe15()
		//exe16()
		//exe17()
		//exe18()
	}

	funcao exe8(){
		real bruto,liquido
		
		escreva("qual seu salário? \n ")
		leia(bruto)

		se(bruto < 2000 )
		liquido = bruto * 0.90
		senao
		liquido = bruto * 0.80

		escreva("seu salário liquido é: \n ",liquido)
	}

	funcao exe9(){
		
		real compra
		escreva("digite o valor da compra: \n")
		leia(compra)

		se(compra < 200){
		compra = compra + 0.5 * compra
		escreva("o valor total é: ",compra,"\n")
		}
		senao {
		compra = compra + 0.3 * compra
		escreva("o valor total é: ",compra,"\n")
		}
		
	}
	funcao exe10(){

		real notaa,notab,media
		
		escreva("diga sua primeira nota: \n")
		leia(notaa)
		escreva("diga sua segunda nota: \n")
		leia(notab)
		
		media = (notaa+notab)/2
		
				se(media >= 7){
					escreva("aprovado! \n")
				}
				senao{
					se(media < 3){
						escreva("reprovado! \n")
				}
				senao{
					escreva("prova final") 
				}
					
				}
	}
	funcao exe11(){

		/*se a = b e b = c então é equilátero,
		  se a <> b e b <> c então é escaleno,
		  senao é isósceles*/

		  real a,b,c

		  escreva("digite o valor a \n")
		  leia(a)
		  escreva("digite o valor b \n")
		  leia(b)
		  escreva("digite o valor c \n")
		  leia(c)

		  se (a == b e b == c){
		  	escreva("é equilátero! \n")
		  	}
		  	senao{
		  		se(a != b e b != c e a != c){
		  			escreva("é escaleno! \n")
		  		                   }
		  			senao{
		  				escreva("é isósceles \n")
		  				}
		  				
		  	     }
		  
		
	}
	funcao exe14(){
		/*Crie um algoritmo que leia três números e exibe o maior deles.
		Caso os números sejam iguais exibir a seguinte mensagem: “Números idênticos”.*/
		real a,b,c
		
		escreva("\n digite um número: ")
		leia(a)
		escreva("\n digite um número: ")
		leia(b)
		escreva("\n digite um número: ")
		leia(c)

		se(a>b e a>c){
			escreva(a," é o maior!")
		}
		se(b>a e b>c){
			escreva(b," é o maior!")
		}
		se(c>a e c>b){
			escreva(c," é o maior!")
		}
		se(a==b e b==c){
			escreva("Números idênticos!")
		}
	}
	funcao exe15(){
		real a,b,c,maior,menor,meio

		escreva("\n digite um número: ")
		leia(a)
		escreva("\n digite um número: ")
		leia(b)
		escreva("\n digite um número: ")
		leia(c)

		se(a>b e a>c){
			maior = a
		}senao{
			se(b>a e b>c){
				maior = b
			}senao{maior = c}
		}

		se(a<b e a<c){
			menor = a
		}senao{
			se(b<a e b<c){
				menor = b
			}senao{menor = c}
		}

		se(a<b e a>c ou a>b e a<c){
			meio = a
		}senao{
			se(b<a e b>c ou b>a e b<c){
				meio = b
			}senao{meio = c}
		}

		escreva("\n ",menor," ",meio," ",maior)
	}
	funcao exe16(){
		/* se eleitores>200,000 e numero de votos < 50% tera segundo turno, senao não tera*/
		inteiro ele,vot

		escreva("\n quantos eleitores? ")
		leia(ele)
		escreva("\n quantos votos o mais votado teve? ")
		leia(vot)

		se(ele >= 200000 e vot < (ele/2)){
			escreva("\n terá 2° turno! ")
		}
		senao{
			escreva("\n não terá 2° turno! ")
		}
	}
	funcao exe17(){
		/*Crie um algoritmo que leia o percurso em quilômetros,
		o tipo do carro e informe o consumo estimado de combustível, 
		sabendo-se que um carro do tipo C faz 12 KM com um litro de gasolina
		, um tipo B faz 9 KM e o tipo A faz 8 KM. Caso seja fornecido um tipo 
		de carro inválido o algoritmo deve alertar o fato.*/
		inteiro a,b,c
		cadeia x

		a = 8
		b = 9
		c = 12

		escreva("\n Qual é o tipo do seu carro? ")
		leia(x)

		se(x=="a"){
			
			escreva("\n carro faz ",a,"km.")
			
		}senao{
		se(x=="b"){
			
			escreva("\n carro faz ",b,"km.")
			
		}senao{
		se(x=="c"){

			escreva("\n carro faz ",c,"km.")
			
		}senao{
			escreva("carro inválido")
		}
	}
		}
		
	}
	funcao exe18(){
		inteiro a,b,c

		escreva("\n insira o valor A! ")
		leia(a)
		escreva("\n insira o valor B! ")
		leia(b)
		c = a
		a = b
		b = c

		escreva(" o valor de A é ",a)
		escreva(" o valor de B é ",b)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 130; 
 * @DOBRAMENTO-CODIGO = [15, 29, 45, 69, 99, 124, 160, 176];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */