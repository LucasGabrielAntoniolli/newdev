const storage = localStorage;
let vehicles;

function loadVehicles() {
  vehicles = JSON.parse(storage.getItem('storageRegistration'));

  if (!JSON.parse(storage.getItem('storageRegistration'))) {
   storage.setItem('storageRegistration', JSON.stringify([]));
  }

  vehicles = JSON.parse(storage.getItem('storageRegistration'));
}

loadVehicles();

const addRegistration = (event) => {
    loadVehicles()

    event.preventDefault();

    const registration = {
        brand: document.getElementById('vehicle-brand').value,
        model: document.getElementById('vehicle-model').value,
        year: document.getElementById('vehicle-year').value,
        units: document.getElementById('vehicle-units').value
    };

    vehicles.push(registration);

    storage.setItem('storageRegistration', JSON.stringify(vehicles))

    document.getElementById('form-crud').reset();
};

  const listRegistration = (carros) => {
    carros = carros ? carros : JSON.parse(localStorage.storageRegistration);

    let ul = document.querySelector('ul');

    if (ul) {
      ul.remove();
    }

    ul = document.createElement('ul');

    carros.forEach((item, index) => {
      let li = document.createElement('li');
     
      li.innerHTML = 
      `Marca: ${JSON.stringify(item.brand)}
       Modelo: ${JSON.stringify(item.model)} 
       Ano: ${JSON.stringify(item.year)}
       Quantidade: ${JSON.stringify(item.units)}
      `;

      let iconUp = document.createElement('i');
      iconUp.setAttribute('class', 'fa-solid fa-plus');
      iconUp.setAttribute('id', 'icon-Up');
      iconUp.setAttribute('style', 'cursor: pointer; margin-inline: 0.5rem');
      iconUp.setAttribute('title', 'Aumentar');
      iconUp.setAttribute('onclick', `onClickUp(this)`);
      iconUp.setAttribute('number-id', `${index}`);

      li.appendChild(iconUp);   

      ul.appendChild(li);
    });
    
    document.getElementById('section-list').appendChild(ul)
  };
                                                                                              
  if (document.getElementById('vehicle-search')) {
    listRegistration()
    document.addEventListener('keyup', function() {
      const search = document.getElementById('vehicle-search').value;

      vehicles = localStorage.storageRegistration ? 
        JSON.parse(localStorage.storageRegistration) : [];

      
      if (search) {
        vehicles =  vehicles.filter(item => item.brand.includes(search));
      }   
      
      listRegistration(vehicles);
    });
};


  const onClickUp = (icon) => {
    
  };



  const buttonAddRegistration = document.getElementById('send-registration');

  if(buttonAddRegistration)
  { 
    buttonAddRegistration.addEventListener('click', addRegistration);
  }

  /*  let iconDown = document.createElement('i');
      iconDown.setAttribute('class', 'fa-solid fa-minus');
      iconDown.setAttribute('id', 'icon-down');
      iconDown.setAttribute('style', 'cursor: pointer; margin-inline: 0.5rem');
      iconDown.setAttribute('title', 'Diminuir');
      iconDown.setAttribute('onclick', `onClickDown(this)`);
      iconDown.setAttribute('number-id', `${index}`);*/