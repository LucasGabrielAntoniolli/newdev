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

    console.log(arrayRegistration);

    counterArray++
};

  const listRegistration = (event) => {
    event.preventDefault();
    
    let arrayStorage = JSON.parse(storage.storageRegistration);
    console.log(arrayStorage);

    let ul = document.createElement('ul');
    let identifi = 0;

    arrayStorage.forEach((item, identifi) => {
      let li = document.createElement('li');
     
      li.innerHTML = 
      `Marca: ${JSON.stringify(arrayStorage[identifi].brand)}
       Modelo: ${JSON.stringify(arrayStorage[identifi].model)} 
       Ano: ${JSON.stringify(arrayStorage[identifi].year)}
       Código: ${JSON.stringify(arrayStorage[identifi].counter)}
       Quantidade: ${JSON.stringify(arrayStorage[identifi].units)}
      `;

      ul.appendChild(li);

        let iconDown = document.createElement('i');
        iconDown.setAttribute('class', 'fa-solid fa-angle-down');
        iconDown.setAttribute('id', 'icon-down');
        iconDown.setAttribute('style', 'cursor: pointer; margin-inline: 0.5rem');
        iconDown.setAttribute('title', 'Diminuir');
        iconDown.setAttribute('onclick', `onClickDown(this)`);
        iconDown.setAttribute('number-id', `${identifi}`);

        let iconUp = document.createElement('i');
        iconUp.setAttribute('class', 'fa-solid fa-angle-up');
        iconUp.setAttribute('id', 'icon-Up');
        iconUp.setAttribute('style', 'cursor: pointer; margin-inline: 0.5rem');
        iconUp.setAttribute('title', 'Aumentar');
        iconUp.setAttribute('onclick', `onClickUp(this)`);
        iconUp.setAttribute('number-id', `${identifi}`);

        li.appendChild(iconDown);
        li.appendChild(iconUp);   

      identifi++;
    });
    
    document.getElementById('section-list').appendChild(ul)
  };
                                                                                              

  const consultRegistration = (event) => {
    event.preventDefault();

    console.log(storage.storageRegistration);

    let arrayStorage = JSON.parse(storage.storageRegistration);
    console.log(arrayStorage);

    let codeVehicle = document.getElementById('vehicle-code').value;
    console.log('code:', codeVehicle);

    if(!codeVehicle){
      codeVehicle = 0;
    }

    let ul = document.createElement('ul');
    document.getElementById('section-list').appendChild(ul);

    let li = document.createElement('li');
    li.innerHTML = `
      Marca: ${JSON.stringify(arrayStorage[codeVehicle].brand)} 
      Modelo: ${JSON.stringify(arrayStorage[codeVehicle].model)} 
      Ano: ${JSON.stringify(arrayStorage[codeVehicle].year)} 
      Código: ${JSON.stringify(arrayStorage[codeVehicle].counter)}
      Quantidade: ${JSON.stringify(arrayStorage[codeVehicle].units)}
      `;
    ul.appendChild(li);
  };

  const onClickUp = (event) => {
    console.log('Up')
  };

  const onClickDown = (event) => {
     console.log('Down')
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