programa
{
	
	funcao inicio()
	{
		exe1("guarda","chuva")
		//aqui o código da um valor de caractere para cada parâmetro da função exe1

		exe2(10.,10.,0.)
		//aqui o código da o valor real 10, 10, e 0 para o parâmetro n1, n2, e média

		exe3(4,5,6,0)
		// nessa linha o valor dos parâmetros n1, n2, n3, e soma recebem um valor inteiro

		exe4()
		//aqui o código entra na função
	}
	funcao cadeia exe1(cadeia a, cadeia b){
		//aqui eu declaro uma função e que ela recebera dois valores de cadeia
		
		escreva(a+"-"+b)
		//aqui eu imprimo na tela os dois valores concatenados com um traço entre eles
		
		retorne a+"-"+b
		// a função exe1 recebe o valor concatenado de a e b com o traço no meio
		
		
	}
	funcao real exe2(real n1, real n2, real media){
		//aqui eu criei uma função que receberá três valores, dois valores iniciais e um para a mèdia

		media = (n1+n2)/2
		//aqui o valor da média muda para a soma de n1 e n2 dividida por 2 para saber a média

		escreva("\n média: ",media)
		//aqui o valor da média é imprimido na tela
		
		retorne media
		//aqui o valor da função recebe a média
		
	}
	funcao inteiro exe3(inteiro n1, inteiro n2, inteiro n3, inteiro soma){
		//aqui eu criei uma função que receberá quatro valores, três valores iniciais e um para a soma	
		
		soma = n1 + n2 + n3
		//aqui soma recebe o valor dos parâmetros n1 n2 e n3 somados

		escreva("\n Soma: ",soma)
		//nessa parte o programa imprime o resultado da soma

		retorne soma 
		// aqui é atribuido á função o valor da soma
		
	}
	funcao exe4(){
		//essa funçaõ não possui parâmetros ela apenas é iniciada
		
		inteiro idade
		cadeia nome
		//aqui são criadas duas variaveis uma inteira para a idade e uma cadeia para o nome

		escreva("\n diga seu nome")
		leia(nome)
		escreva("\n diga sua idade")
		leia(idade)
		//aqui o programa pede e recebe as informações de nome e idade
		
		escreva("\n",nome," sua idade é ",idade," anos.")
		//aqui é exibida uma frase dizendo a idade e o nome do usuário
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1983; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */