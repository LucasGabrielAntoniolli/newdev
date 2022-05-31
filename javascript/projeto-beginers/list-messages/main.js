const buttonAddMessage = document.getElementById('add-button')

const onClickEdit = function (idRecord) {
  console.log('chamou a função editar', idRecord)
}

const onClickRemove = function () {
 console.log('chamou a função remover')
}

let countRow = 0;
function addMessage(event) {
  event.preventDefault();
  const inputFrom = document.getElementById('from');
  const inputTo = document.getElementById('to');
  const textArea = document.getElementById('message');

  if(!inputFrom.value.length){
    alert('O remetente deve ser informado')
    return;
  }

  if(!inputTo.value.length){
    alert('O destinatário deve ser informado')
    return;
  }

  // o trim remove os espaços do inicio e do final da string
  textArea.value = textArea.value.trim();

  if(!textArea.value.length){
    alert('O texto deve ser informado')
    return;
  }

  const message = {
    from: inputFrom.value,
    to: inputTo.value,
    message: textArea.value,
  }
  console.log('...', message)
 
  /*
  const sessionMessages = document.getElementById('section-messages');


  // buscamos uma lista dentro da função, e se ela não existir criamos uma 

  let ul = sessionMessages.querySelector('ul')

  if(!ul){
    ul = document.createElement('ul');
    sessionMessages.appendChild(ul);
  }

  document.getElementById('form-message').reset();

  const li = document.createElement('li');
  li.innerHTML = `De: ${message.from} Para: ${message.to} Mensagem: ${message.message}`;

  ul.appendChild(li)  */

  // Criar uma tabela se ela não existir

  const sessionTable = document.getElementById('section-table');

  let tbody = sessionTable.querySelector('tbody');

 

  document.getElementById('form-message').reset();

  const tBody = document.getElementById('tbody');

  const tr = document.createElement('tr');

  const tdFrom = document.createElement('td');
  tdFrom.innerHTML = message.from

  const tdTo = document.createElement('td');
  tdTo.innerHTML = message.to

  const tdMessage = document.createElement('td');
  tdMessage.innerHTML = message.message;

  tr.appendChild(tdFrom);
  tr.appendChild(tdTo);
  tr.appendChild(tdMessage);

  const tdButtons = document.createElement('td')

  const iconEdit = document.createElement('i')
  iconEdit.setAttribute('class', 'fa-solid fa-pen-to-square')
  iconEdit.setAttribute('style', 'cursor:pointer')

  const iconRemove = document.createElement('i')
  iconRemove.setAttribute('class', 'fas fa-trash')
  iconRemove.setAttribute('style', 'cursor:pointer')

 
  tdButtons.appendChild(iconRemove)
  tdButtons.appendChild(iconEdit)
  tr.appendChild(tdButtons);
  
  

  //precisamos identificar a linha

  tr.setAttribute('id',countRow)
  countRow += 1

  iconEdit.setAttribute('onclick', `onClickEdit(${tdButtons.parentNode.id});`)
  iconRemove.setAttribute('onclick', `onClickRemove()`)

  tBody.appendChild(tr);

}

buttonAddMessage.addEventListener('click', addMessage);

