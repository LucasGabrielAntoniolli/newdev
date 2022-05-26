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

  if(messages < 3){
   messages.push(message)
  } else{
    // chama o alert do browser
    alert('O vetor está cheio');
  }

  // pegando o formulário e utilizando um metodo que é o reset
  document.getElementById('formulario').reset();
  console.log('...', message);
  console.log('...', messages);
}

buttonsendmessege.addEventListener('click', addMessage);
