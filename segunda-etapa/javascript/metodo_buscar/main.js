document.addEventListener('keydown', function() {
  const input = document.querySelector('input');

  const arrayItems = ['banana', 'goiaba', 'bar'];
  
  
  console.log('encontrou ->', arrayItems.filter(item => item.includes(input)));
});