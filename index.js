console.log('Arquivo index.js foi carregado');

//Pega os frameworks do Node.js a serem usados
const express = require('express');
const path = require('path');

const app = express();

// Middleware para liberar e mexer nos arquivos da pasta public pro front-end
app.use(express.static(path.join(__dirname, '/public')));//_dirname é a localização do arquivo atual

//Abre o arquivo de login ao acessar o root
app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, '/public/login.html'));
});

//Exibe log quando iniciar o servidor
app.listen(3000, () => {
  console.log('Servidor rodando em http://localhost:3000');
});
