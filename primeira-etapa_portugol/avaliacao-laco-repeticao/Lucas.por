programa
{
	inclua biblioteca Matematica --> mat
	
	funcao inicio(){ 
		
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

		
/*. Uma loja deseja cadastrar 5 clientes e verificar se o
faturamento da loja foi superior à loja B (faturamento = 54 000).
Se o faturamento atingir esse valor mostre na tela uma mensagem
contendo em quanto foi superado o faturamento.*/

		real faturamento = 0.,faturamentoB = 54000.,cliente
		inteiro i = 0

		enquanto(i<05){
			escreva("\n Digite o valor da compra do cliente:")
			
			leia(cliente)
			faturamento = cliente + faturamento

			i++

			se(faturamento >= faturamentoB){
				escreva("\n o faturamento da loja ultrapassou o da loja B em: ",faturamento-faturamentoB)
			}
		}
	}
		funcao exe2(){
		
/*2.  Uma loja tem uma política de descontos conforme o valor da compra do cliente.
●	Os descontos começam acima dos R$500
●	A cada 100 reais acima dos R$500,00 o cliente ganha 1% de desconto cumulativo até 25%.
Por exemplo: R$500 = 1% || R$600,00 = 2% ...
Faça um programa que exiba essa tabela de descontos no seguinte formato:
ValorDaCompra — porcentagemDeDesconto — valorFinal
*/
	
		real valorcompra,valorfinal,div,porcentagem

		escreva("\n Qual o valor da compra?")
		leia(valorcompra)

		div = valorcompra/100
		div = div - 0.5
		div = mat.arredondar(div,0)

		porcentagem = div - 4
		se(porcentagem>25){
			porcentagem = 25.
		}
		
		valorfinal=valorcompra*((100-porcentagem)/100)
		
		escreva("\n O valor da compra é: ",valorcompra,"\n O desconto é de ",porcentagem,"%","\n E o valor final é de: ",valorfinal)

		
	}
		funcao exe3(){
			real preco = 5.0 ,total= 0.0
			inteiro ingressos = 120

			enquanto(preco > 0.5){
			
				ingressos += 26
				preco -= 0.5

				total = preco *ingressos - 200
				escreva("\ntotal Igressos: ",ingressos," preço: ",preco," Total: ",total)
			}
		}
		funcao exe4(){
		/*Uma loja utiliza o código V para transação à vista e P para transação a prazo. 
		 * Faça um programa que receba código e valor de 5 transações. Calcule e mostre:
●	O valor total das compras à vista
●	O valor total das compras a prazo sabendo que essas compras possuem 10% de juros sobre o valor total
●	O valor total das compras efetuadas
*/	
		real P = 0.,V = 0.,T = 0.,S =0.
		cadeia condicao
		inteiro i = 0

		enquanto(i<5){
			
			escreva("\n Diga (v) se é a vista e diga (p) se for a prazo: ")
			leia(condicao)

			se(condicao == "v"){
				escreva("\n Digite o valor da transação: ")
			     leia(S)
			     
			     V += S 
			}
			se(condicao == "p"){
				escreva("\n Digite o valor da transação: ")
				leia(S)

			     P += S * 1.1
				
			}
				


			i++
		}
		
			T = V + P
			escreva("\n Á vista: ",V,"\n Á prazo: ",P,"\n total: ",T)
		
		}
		funcao exe5(){

			inteiro i=0,qt=0,num
			
			enquanto(i<3){
				i++

				escreva("\n Digite um número: ")
				leia(num)

				se(num >= 30 e num <= 90){
					qt++
				}
			}
			escreva("\n A quantidadede de números dentro do padrão é: ",qt)
		}
		funcao exe6(){
			
			inteiro idade=1,soma=0,contador=0,media=0
			
			enquanto(idade > 0){
				
				escreva("\n digite a idade: ")
				leia(idade)

				se(idade <=0){
					pare
				}
				contador++

				soma = soma + idade
			
			}
				media = soma / contador
			escreva("\n A média de idade é: ",media)
		}
		funcao exe7(){

				inteiro num,mul=1,res

				escreva("\n Escreva um número: ")
				leia(num)
				
				para(inteiro i = 0; i < 10; i++){
					
					res=num*mul
					
					escreva("\n",num,"x",mul,"=",res)

					mul++
						
				}
		}
		funcao exe8(){
			/*Faça um programa que receba a idade de 10 pessoas e calcule e mostre:

a) A quantidade de pessoas em cada faixa etária;
b) A porcentagem de pessoas na primeira e na última faixa etária, com relação ao total de pessoas: 
●	Até 15 anos
●	De 16 a 30 anos
●	De 31 a 45 anos
●	De 46 a 60 anos
●	Acima de 61 anos

*/

		inteiro   a=0,
				b=0,
				c=0,
				d=0,
				ee=0,
				pa=0,pe=0,
				idade=0,contador=0

		faca{
			contador++
			
			escreva("\n Diga a idade: ")
			leia(idade)

			se(idade <= 15){
				a++
			}
			senao se(idade >= 16 e idade <= 30){
				b++
			}
			senao se(idade >= 31 e idade <= 45){
				c++
			}
			senao se(idade >= 46 e idade <= 60){
				d++
			}
			senao se(idade >= 61){
				ee++
			}

		 }enquanto(contador < 10)

		 	pa = (a*100)/10
		 	pe = (ee*100)/10

		 	escreva("\n Até 15 anos: ",a,"\n De 16 a 30 anos: ",b,"\n De 31 a 45 anos ",c,"\n De 46 a 60 anos: ",d,"\n Acima de 61 anos",ee,"\n Porcentagem até 15: ",pa,"% ","\nporcentagem acima de 61 anos: ",pe,"%")
		}

		funcao exe9(){
			/*Faça um programa que simule uma calculadora básica, com as seguintes operações:
			adição, subtração, divisão e multiplicação, deve ter também uma operação para sair do programa .
			O programa deve ler qual operação que o usuário deseja realizar em seguida deve receber 2 números
			para realizar tal operação, mostre para o usuário o resultado. O programa deve ser executado
			enquanto a operação de sair não for selecionada.*/

			cadeia operador,condicao
			real b=0.,a=0.,resultado=0.

			para(inteiro i=0; 0 >= 0; i++){

				escreva("\n quer fazer uma conta?(sim)ou(não)")
				leia(condicao)
				
				se(condicao == "não"){
					pare
				}
				
				escreva("\n Digite o valor")
				leia(a)
				escreva("\n Digite o operador(*,/,+ ou -)")
				leia(operador)
				escreva("\n Digite o valor")
				leia(b)
				
				
				se(operador == "*"){
					
					resultado = a * b
					
				}
				senao se(operador == "/"){
					
					resultado = a / b
					
				}
				senao se(operador == "-"){
					
					resultado = a - b
					
				}
				senao se(operador == "+"){
					
					resultado = a + b
					
				}

				escreva(a,operador,b,"=",resultado)
				
			}

			
		}
		funcao exe10(){

			inteiro num = 2
			
			enquanto(num >= 0 e num%2 == 0){
				escreva("\n digite um número: ")
				leia(num)
				escreva("\n",num)
			}
		}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 5956; 
 * @DOBRAMENTO-CODIGO = [30, 19, 43, 73, 86, 125, 141, 161, 178, 229, 287, 283];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */