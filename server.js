const express = require('express');

// Constants
const PORT = 80;
const HOST = '0.0.0.0';

// App
const app = express();

app.get('/image', (req, res) => {
    res.sendFile('D:\devops_photo.jpg');
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);
