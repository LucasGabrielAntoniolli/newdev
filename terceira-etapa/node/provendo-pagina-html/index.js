const http = require('http');
const path = require('path');
const fs = require('fs');

  
const server = http.createServer((req, res) => {

  const url = req.url;
  let file = url === '/' ? 'index.html' : req.url;

  const filepath = path.join(__filename, 'public', file);

  if(error) alert('Error 404 not found!');
  return res.end(content);
});

server.listen(3000, () => {
  console.log('http://localhost:3000/');
});