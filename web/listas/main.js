const buttonsendmessege = document.getElementById('buttonsendmessege');

const messages = [];

function addMessage(event) {
  event.preventDefault();

  const inputName = document.getElementById('nome');
 

  const inputemail = document.getElementById('email');
  

  const inputtelefone = document.getElementById('telefone');
 

  const inputsenha = document.getElementById('password');
  
  const message = {
    nome:inputName.Value,
    email:inputemail.Value,
    telefone:inputtelefone.Value,
    password:inputsenha.Value,
  }

  messages.push(message)

  document.getElementById('formulario').reset();
  console.log('...', message);
  console.log('...', messages);
}

buttonsendmessege.addEventListener('click', addMessage);
