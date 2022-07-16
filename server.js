const express = require('express');

// Constants
const PORT = 80;
const HOST = '0.0.0.0';

// App
const app = express();
app.get('/', (req, res) => {
    res.send('https://img-9gag-fun.9cache.com/photo/aMZpZgG_460s.jpg');
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);
