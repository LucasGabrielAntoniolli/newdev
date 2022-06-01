let lineEditingInMoment = null;

const buttonAddMessage = document.getElementById('add-button')

const onClickDowm = function () {

}

const onClickUp = function () {
  
}

const onClickEdit = function (lineEditing) {
  lineEditingInMoment = lineEditing;
  /*
  const fromValue = lineEditing.childNodes[0].innerHTML;
  const toValue = lineEditing.childNodes[1].innerHTML;
  const messageValue = lineEditing.childNodes[2].innerHTML;
  */

  //desestruturação de arrays
  const [from, to, message] = lineEditing.childNodes;
  

  document.getElementById('from').value = from.innerHTML;
  document.getElementById('to').value = to.innerHTML;
  document.getElementById('message').innerHTML = message.innerHTML;

  /*
  lineEditing.childNodes.forEach((valor, index) => {
    console.log('valor: ', valor)
    console.log('index: ', index)
  })*/
}

const onClickRemove = function (lineRemove) {
  console.log(lineRemove);
   lineRemove.remove();
}

let countRow = 0;
function addMessage(event) {
  event.preventDefault();
  const inputFrom = document.getElementById('from');
  const inputTo = document.getElementById('to');
  const textArea = document.getElementById('message');

  if(!inputFrom.value.length){
    alert('O remetente deve ser informado');
    return;
  }

  if(!inputTo.value.length){
    alert('O destinatário deve ser informado');
    return;
  }

  // o trim remove os espaços do inicio e do final da string
  textArea.value = textArea.value.trim();

  if(!textArea.value.length){
    alert('O texto deve ser informado');
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

  const tdButtons = document.createElement('td');

  const iconEdit = document.createElement('i');
  iconEdit.setAttribute('class', 'fa-solid fa-pen-to-square');
  iconEdit.setAttribute('style', 'cursor:pointer');

  const iconRemove = document.createElement('i');
  iconRemove.setAttribute('class', 'fas fa-trash');
  iconRemove.setAttribute('style', 'cursor:pointer');


  const iconArrowDowm = document.createElement('i');
  iconArrowDowm.setAttribute('class', 'fa-solid fa-arrow-down');
  iconArrowDowm.setAttribute('style', 'cursor:pointer');


  const iconArrowUp = document.createElement('i');
  iconArrowUp.setAttribute('class', 'fa-solid fa-arrow-up');
  iconArrowUp.setAttribute('style', 'cursor:pointer');

 
  tdButtons.appendChild(iconArrowDowm);
  tdButtons.appendChild(iconArrowUp);
  tdButtons.appendChild(iconRemove);
  tdButtons.appendChild(iconEdit);
  tr.appendChild(tdButtons);

  // precisamos identificar a linha

  tr.setAttribute('id', `line${countRow}`);
  countRow += 1

  iconEdit.setAttribute('onclick', `onClickEdit(${tdButtons.parentNode.id});`);
  iconEdit.setAttribute('title', `Editar`);
  iconRemove.setAttribute('onclick', `onClickRemove(${tdButtons.parentNode.id})`);
  iconRemove.setAttribute('title', `remover`);
  iconArrowDowm.setAttribute('onclick', `onClickDowm(${tdButtons.parentNode.id})`);
  iconArrowDowm.setAttribute('title', `descer`);
  iconArrowUp.setAttribute('onclick', `onClickUp(${tdButtons.parentNode.id})`);
  iconArrowUp.setAttribute('title', `sobir`);

  if(lineEditingInMoment){
    console.log('Essa linha já existe');
    const [fromToUpdate, toToUpdate, messageToUpdate] = lineEditingInMoment.childNodes;

    fromToUpdate.innerHTML = message.from;
    toToUpdate.innerHTML = message.to;
    messageToUpdate.innerHTML = message.message;
    lineEditingInMoment = null;

  }else{
    tBody.appendChild(tr);
  }

}

buttonAddMessage.addEventListener('click', addMessage);