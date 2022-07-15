const express = require('express');
const cors = require('cors');
const routes = require('./routes');
const app = express();

const PORT = 3017;

app.use(cors());
app.use(routes);
app.use(express.json());

app.listen(PORT, () => {
  console.log(`Port ${PORT} is listening`)
});
