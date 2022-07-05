
const exemplo = 'exemplo mais loko';

const loadData = async () => {
  
  const response = await fetch('http://localhost:3001');
  
  console.log('resposta do meu servidor forma 1:', await response.json());
}

loadData();

fetch('http://localhost:3001')
.then((response) => {
  console.log('isso deu certo', response);
})
.catch((error) => {
  console.log('isso deu pau', error);
})
.finally(() => {
  console.log('requisição finalizou');
})