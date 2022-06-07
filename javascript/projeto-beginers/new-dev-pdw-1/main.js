const addbutton = document.getElementById('addbutton');

const buttonAdd = function()  {
  event.preventDefault();

  const message = {
     name: document.getElementById('name').value,
     tell: document.getElementById('tell').value,
     years: document.getElementById('years').value,
     adress: document.getElementById('adress').value,
     CPF: document.getElementById('CPF').value
  }

  myStorage = localStorage;
  
  console.log(message);
 document.querySelector('form').reset();
 }

addbutton.addEventListener('click', buttonAdd);

