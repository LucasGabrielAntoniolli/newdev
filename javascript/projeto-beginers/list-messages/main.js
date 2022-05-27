const buttonAddMessage = document.getElementById('add-button')

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

  const sessionMessages = document.getElementById('section-messages');


  /* buscamos uma lista dentro da função, e se ela não existir criamos uma */

  let ul = sessionMessages.querySelector('ul')

  if(!ul){
    ul = document.createElement('ul');
    sessionMessages.appendChild(ul);
  }

  document.getElementById('form-message').reset();

  const li = document.createElement('li');
  li.innerHTML = `De: ${message.from} Para: ${message.to} Mensagem: ${message.message}`;

  ul.appendChild(li)

}

buttonAddMessage.addEventListener('click', addMessage)

