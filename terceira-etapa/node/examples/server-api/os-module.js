


function checkStatusMemory(){
  const os = require('os');
  console.log(os.platform()); 

  const mem = parseInt(os.freemem() / 1024 / 1024);
  
  const total = parseInt(os.totalmem() / 1024 / 1024 );
  
  
  const percentage = parseInt((mem / total) * 100);
  console.log(total, mem, percentage);
  
  const statistics = {
    memoryTotal: `${total}MB`,
    freeMemory: `${mem}MB`,
    usage: `${percentage}%`
  };
 
};

checkStatusMemory();

setInterval(() => {
   console.clear();
   console.table(statistics);}, 500);