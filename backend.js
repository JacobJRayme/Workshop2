const express = require('express');
const app = express();




app.get('/', (req, res, next) => {
  res.sendfile('./leekspin.com.html');
})
app.get('/image', (req, res, next) => {
  res.sendfile('./image.gif');
})
app.get('/polkka.mp3', (req, res, next) => {
  res.sendfile('./polkka.mp3');
})
app.get('/info.txt', (req, res, next) => {
  res.sendfile('./info.txt');
})
app.get('/polkka.ogg', (req, res, next) => {
  res.sendfile('./polkka.ogg');
})
app.get('/icon.png', (req, res, next) => {
  res.sendfile('./icon.png');
})
app.listen(80);
