let counter = 0;

document.getElementById('btn').addEventListener('click', function(){
  location. reload();
});

const t1 = document.getElementById('1');
const t2 = document.getElementById('2');
const t3 = document.getElementById('3');
const t4 = document.getElementById('4');
const t5 = document.getElementById('5');
const t6 = document.getElementById('6');
const t7 = document.getElementById('7');
const t8 = document.getElementById('8');
const t9 = document.getElementById('9');

 const fCiclo = () => {
  if(counter == 0){
    event.target.innerHTML = 'X';
    
    
  if(t1.innerHTML==t2.innerHTML && t2.innerHTML==t3.innerHTML && t1!="" || t4.innerHTML==t5.innerHTML && t5.innerHTML==t6.innerHTML && t6!=""   || t7.innerHTML==t8.innerHTML && t8.innerHTML==t9.innerHTML && t9!=""   || t1.innerHTML==t4.innerHTML && t4.innerHTML==t7.innerHTML  && t7!=""  || t2.innerHTML==t5.innerHTML && t5.innerHTML==t8.innerHTML  && t8!=""  || t3.innerHTML==t6.innerHTML && t6.innerHTML==t9.innerHTML  && t9!=""  || t1.innerHTML==t5.innerHTML && t5.innerHTML==t9.innerHTML && t9!=""   || t7.innerHTML==t5.innerHTML && t5.innerHTML==t3.innerHTML && t3!=""  ){
    alert('jogador "X" ganhou!');
    return;
  }else{counter = 1;}

    
  }else{
   event.target.innerHTML = 'O';
   
   
  if(t1.innerHTML==t2.innerHTML && t2.innerHTML==t3.innerHTML && t1!="" || t4.innerHTML==t5.innerHTML && t5.innerHTML==t6.innerHTML && t6!=""   || t7.innerHTML==t8.innerHTML && t8.innerHTML==t9.innerHTML && t9!=""   || t1.innerHTML==t4.innerHTML && t4.innerHTML==t7.innerHTML  && t7!=""  || t2.innerHTML==t5.innerHTML && t5.innerHTML==t8.innerHTML  && t8!=""  || t3.innerHTML==t6.innerHTML && t6.innerHTML==t9.innerHTML  && t9!=""  || t1.innerHTML==t5.innerHTML && t5.innerHTML==t9.innerHTML && t9!=""   || t7.innerHTML==t5.innerHTML && t5.innerHTML==t3.innerHTML && t3!=""  ){
    alert('jogador "O" ganhou!');
    return;
  }else{ counter = 0;}
    
  }
};

document.getElementById('game').addEventListener('click', fCiclo);


