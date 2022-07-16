const express = require('express');

// Constants
const PORT = 80;
const HOST = '0.0.0.0';

// App
const app = express();
var filePath = 'D:\devops_photo.jpg';
app.get('/', (req, res) => {
    res.sendFile(filePath);
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);
