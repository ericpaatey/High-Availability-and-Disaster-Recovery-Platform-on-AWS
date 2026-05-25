const express = require('express');

const app = express();

app.get('/', (req, res) => {
  res.send('HA + DR Platform Running');
});

app.get('/health', (req, res) => {
  res.status(200).send('OK');
});

app.get('/simulate-outage', (req, res) => {
  process.exit(1);
});

app.listen(3000, () => {
  console.log('App running on port 3000');
});