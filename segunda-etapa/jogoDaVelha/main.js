let counter = 0;

document.getElementById('btn').addEventListener('click', function(){
  location. reload();
});

const validacao = () => {

  const t1 = document.getElementById('1');
  const t2 = document.getElementById('2');
  const t3 = document.getElementById('3');
  const t4 = document.getElementById('4');
  const t5 = document.getElementById('5');
  const t6 = document.getElementById('6');
  const t7 = document.getElementById('7');
  const t8 = document.getElementById('8');
  const t9 = document.getElementById('9');

if(t1==t2==t3 || t4==t5==t6 || t7==t8==t9 || t1==t4==t7 || t2==t5==t8 || t3==t6==t9 || t1==t5==t9 || t7==t5==t3){
  return true;
}
};
 


document.getElementById('game').addEventListener('click', () => {
  if(counter == 0){
    event.target.innerHTML = 'X';
    
    validacao();
    counter = 1;
  }else{
   event.target.innerHTML = 'O';
    
    validacao();
    counter = 0;
  }
});


