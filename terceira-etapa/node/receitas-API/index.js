const http = require('http');
const URL = require('url');
const path = require('path');
const fs = require('fs');
let receitas = require('./receitas.json');

const server = http.createServer((req, res) => {
  let { titulo, ingredientes, remove} = URL.parse(req.url, true).query;
  console.log(titulo, 'esse é o titulo');

  if(ingredientes){
  ingredientes = ingredientes.split(',');
  }

  if(!titulo){
    return res.end(JSON.stringify(receitas));
  };

  if(remove){
    receitas = receitas.filter(receitas => receitas ?. titulo !== titulo);
  } else {
    receitas.push({titulo});
  };

  receitas.push({titulo});

  fs.writeFile(
    path.join(__dirname, 'receitas.json'),
    JSON.stringify(receitas),
    (err) => {
      if (err) throw err;

      return res.end(JSON.stringify({
        status: 'salvo',

      }));
    }
  );

});

server.listen(3005, () => {
  console.log('http://localhost:3005/');
});