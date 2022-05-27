programa
{
	
	funcao inicio()
	{ //exercicio 1

		real A,B
		B=100
		
		escreva("digite um número e press enter! ")
		leia(A)
		
		se(A>B) {
			escreva("O seu número é maior que 100! \n ")
		}
		exercicio7()
	 
	}
	
	funcao exercicio2()
	{
		cadeia senha,senha2,digitada
		senha="portugol"
		senha2="PORTUGOL"
		
		escreva("digite a senha: ")
		leia(digitada)
		se(digitada == senha) 
		escreva("senha válida \n")
		
		senao
		se(digitada == senha2)
		escreva("senha válida \n")
		
		senao
		escreva("senha inválida \n")
		
	}

	funcao exercicio3()
	{	
		inteiro C
		escreva("Digite um número \n")
		leia(C)

		se(C>100)
		se(C<500)
		//ou se(c>100 e c<500)
		escreva(C," está dentro dos padrões! \n")

		senao
		escreva(C," não está no padrão! \n")

	}

	funcao exercicio4()
	{
		real nota1,nota2,media
		escreva("diga primeira nota! \n")
		leia(nota1)
		escreva("diga me sua segunda nota! \n")
		leia(nota2)

		media=((nota1+nota2)/2)
		escreva("sua media é: ",media,"\n")

		se(media >= 7)
		escreva("sua nota está acima da média! \n")
		senao
		escreva("sua nota é baixa! \n")

			
	}
	
	funcao exercicio5()
	{
		inteiro num,resto
		escreva("diga um número; \n")
		leia(num)
		resto = num % 5

		se( resto == 0)
		escreva("é divisível por 5! \n")
		senao
		escreva("não é divisível por 5! \n")

	}

	funcao exercicio6()
	{
		inteiro nume,rest
		escreva("digite um número")
		leia(nume)

		rest=nume%2
		se(rest==0)
		escreva("o número é par! \n")
		senao
		escreva("o número é impar! \n")

	}
	
	funcao exercicio7()
	{
		real numA,numB
		escreva("determine o número A \n")
		leia(numA)
		escreva("determine o número B \n")
		leia(numB)

		se(numA>numB)
		escreva("número ", numA ," é maior que número ", numB ,"\n")
		senao
		se(numA==numB)
		escreva("o número ", numA ," é igual ao número ", numB ," \n")
		senao
		escreva("O número ", numB ," é maior que o número ", numA ," \n")
	}
}




















/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1891; 
 * @DOBRAMENTO-CODIGO = [3, 19, 39, 55, 74, 88];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */