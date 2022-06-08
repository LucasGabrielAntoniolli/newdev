let peoples = [];

const iconEdit = document.createElement('i');
iconEdit.setAttribute('title', 'Editar');
iconEdit.setAttribute('class', 'fa-solid fa-pencil');
iconEdit.setAttribute('style', 'cursor: pointer; margin-inline: 0.5rem');


const iconRemove = document.createElement('i');
iconRemove.setAttribute('title', 'Remover');
iconRemove.setAttribute('class', 'fa-solid fa-trash');
iconRemove.setAttribute('style', 'cursor: pointer; margin-inline: 0.5rem');

const EditPeople = () => {
console.log('edit')
}

const RemovePeople = () => {
    console.log('remove')
}

const loadPeoples = () => {
  const itemsJaArmazenados = localStorage.getItem('listaDePessoas');
  return itemsJaArmazenados ? JSON.parse(itemsJaArmazenados) : [];
}

const listPeoples = () => {
  const peoples = loadPeoples();
  
  let ul = document.querySelector('ul');
  if (ul) {
    ul.remove();
  }
  
  ul = document.createElement('ul');
 
  peoples.forEach((item, index) => {
    const li = document.createElement('li');
    li.innerHTML = `Nome: ${item.name} Idade: ${item.age}, Altura: ${item.height}`
   
    li.appendChild(span());
   
    ul.appendChild(li);
    
  });
  
  document.getElementById('list-section').appendChild(ul);
}

const span = () => {
    const span =document.createElement('span');
    span.appendChild(iconRemove);
    span.appendChild(iconEdit);
    
    return span;
}

listPeoples();

const addPeople = (event) => {
  event.preventDefault();
  const people = {
    name: document.getElementById('name').value,
    age: document.getElementById('age').value,
    height: document.getElementById('height').value,
  }
  
  peoples = loadPeoples();

  peoples.push(people);
  
  localStorage.setItem('listaDePessoas', JSON.stringify(peoples));

  document.querySelector('form').reset();

  listPeoples();
}

iconEdit.addEventListener('click', EditPeople);

iconRemove.addEventListener('click', RemovePeople);

const botaoDeAdicionar = document.getElementById('btn');
botaoDeAdicionar.addEventListener('click', addPeople)