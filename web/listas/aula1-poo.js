// Javascript: uma linguagem de programação;

// POO: Programação orientada a objeto;
// Atributos e Métodos (funções);

// Exemplos de atributos: cor, altura, largura;
// Exemplos de Métodos/Funções: frear, acelerar, virar ;

// A convenção da declaração da variável deve ser seguida:

//  variável não iniciar com números

//  variável não pode iniciar com caracteres especiais(*, &, %)

//  variável não pode começar com letra maiúsculo
//   exemplo errado: 1var, Var, &var.
//   exemplo certo: var1, vaR, var&

// Variáveis devem possuir valor semântico
//  Exemplo ruim: banana, a, b, c, n1, n2, n3
//  Exemplo bom: numeroParcelas, nomeUsuário

// Variável não pode ter acento

// Funções devem seguir as mesmas convenções e devem ter valor semântico

/*              Exemplos                 */

let nomeVariavel = 1

let numeroParcelas = 200

// 1° método de criar uma função, atribuí-la a uma variável
let somaValores = function () {
  console.log('somando valor')
}

// chamar/invocar/conjurar/acionar
somaValores()

// 2° método de criar uma funçao, named function
function subtraiValores() {
  console.log('subtrai');
}

subtraiValores()

//3° método
const carro = 'gol';

// Por convenção, é possivel declarar CONSTANTES e possuem escopo global em caixa alta
const NUMERO = 2;

console.log('--->',carro)