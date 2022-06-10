const AddRegistration = (event) => {
  event.preventDefault();

  console.log('função adicionar cadastro');
};

const ButtonAddRegistration = document.getElementById('send-registration');
ButtonAddRegistration.addEventListener('click', AddRegistration);
