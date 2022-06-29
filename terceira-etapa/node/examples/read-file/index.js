const http = require('http');
const url = request.url;
const times = require('./clubes.json');

const query = url.parse(request.url, true).query;
const { name, lastname } = url.parse(http.request.url)
if(name || lastname){
  console.log('query', name, lastname);
}



console.log('url', request.url);
//console.log('Clubes:', times);

http.createServer((req, response) => {
  
  response.end(JSON.stringify(times));
}).listen(3001, () => {
  console.log('API is running on port 3001');
});