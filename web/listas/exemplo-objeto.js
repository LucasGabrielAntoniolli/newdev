
// N veícuos são instancias que formam uma classe
// uma forma de identificar uma classe, é pela letra maiuscula no inicio
function Carro (color, marca, model, ano) {
  return{
    cor: 'color',
    marca,
    modelo: 'model',
    ano,
  }
}  

const carro1 = Carro('vermelho', 'volks', 'fusca', 2010);
const carro2 = Carro('vermelho', 'volks', 'gol', 2010);
const carro3 = Carro('vermelho', 'volks', 'corsa', 2010);
const carro4 = Carro('vermelho', 'volks', 'gipe', 2010);

console.log('carro1', carro1)
console.log('carro2', carro2)
console.log('carro3', carro3)
console.log('carro4', carro4)

function Pessoa(nome, sobrenome, idade){
  return{
    nome, sobrenome, idade,
  }
}

const pessoa1 = Pessoa(Lucas, G, 17)
const pessoa2 = Pessoa(Mauricio, Almeida, 60)
const pessoa3 = Pessoa(Ana, Maria, 13)

console.log('pessoa1', pessoa1) 
console.log('pessoa2', pessoa2)
console.log('pessoa3', pessoa3)