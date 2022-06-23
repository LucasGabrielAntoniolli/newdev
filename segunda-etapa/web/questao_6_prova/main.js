const storage = localStorage;
let array = [];

const adicionar = () => {

  const classe = {
    tarefa: document.getElementById('consult').value
  };

  const li = document.createElement('li');
  const ul = document.querySelector('section ul');
  ul.appendChild(li);
  li.innerHTML = classe.tarefa;
  const check = document.createElement('input');
  check.setAttribute('type', 'checkbox');
  li.appendChild(check);

  array.push(classe.tarefa);
  storage.setItem('storageRegistration', JSON.stringify(array));

};

const consultar = () => {
 
  const lin = document.querySelector('main li');

  if(lin){
    lin.remove();
  }


  const exibir = () => {

    array.forEach((item, index) => {
      
      let lim = document.createElement('li');
      let ull = document.querySelector('main ul');
      
      ull.appendChild(lim);
      lim.innerHTML = classe.tarefa;
  
    });
  };
  

  array.forEach((item, index) => {
   
    const contem = document.getElementById('consult').value;
    console.log(contem);

      array =  array.filter(item => item.includes(contem)); 
      exibir();
    

  });



};

const addTarefa = document.getElementById('add').addEventListener('click', adicionar);
const consultTarefa = document.getElementById('consult').addEventListener('keyup', consultar);