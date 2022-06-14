const storage = localStorage;
let arrayRegistration = [];
let counterArray = 0;

const addRegistration = (event) => {
    event.preventDefault();

    const registration = {
        brand: document.getElementById('vehicle-brand').value,
        model: document.getElementById('vehicle-model').value,
        year: document.getElementById('vehicle-year').value,
        units: document.getElementById('vehicle-units').value,
        counter: counterArray
    };

    arrayRegistration[counterArray] = registration;
    storage.setItem('storageRegistration', JSON.stringify(arrayRegistration)); 

    counterArray++
  };

  const listRegistration = (event) => {
    event.preventDefault();
    
    let arrayStorage = JSON.parse(storage.storageRegistration);
    console.log(arrayStorage);

    let ul = document.createElement('ul');
    let identificador = 0;

    arrayStorage.forEach((item, identificador) => {
      let li = document.createElement('li');
     
      li.innerHTML = 
      `
      Marca: ${JSON.stringify(arrayStorage[identificador].brand)} 
      Modelo: ${JSON.stringify(arrayStorage[identificador].model)} 
      Ano: ${JSON.stringify(arrayStorage[identificador].year)} 
      Quantidade: ${JSON.stringify(arrayStorage[identificador].units)} 
      Código: ${JSON.stringify(arrayStorage[identificador].counter)}
      `;

      ul.appendChild(li);
      identificador++
    });
    
    document.getElementById('section-list').appendChild(ul); 
  };


  const consultRegistration = (event) => {
    event.preventDefault();

    let arrayStorage = JSON.parse(storage.storageRegistration);
    console.log(arrayStorage);

    let codeVehicle = document.getElementById('vehicle-code').value;
    console.log('code:', codeVehicle);

    let ul = document.createElement('ul');
    document.getElementById('section-list').appendChild(ul);

    let li = document.createElement('li');
    li.innerHTML = JSON.stringify(arrayStorage[codeVehicle]);
    ul.appendChild(li);
  };
  
  
  const buttonConsultRegistration = document.getElementById('consult-vehicle-code');

  if(buttonConsultRegistration)
  {
    buttonConsultRegistration.addEventListener('click', consultRegistration);
  }
  
  const buttonListRegistration = document.getElementById('list-vehicle-code');

  if(buttonListRegistration)
  {
    buttonListRegistration.addEventListener('click', listRegistration);
  }

  const buttonAddRegistration = document.getElementById('send-registration');

  if(buttonAddRegistration)
  { 
    buttonAddRegistration.addEventListener('click', addRegistration);
  }
