const express = require('express');

// Constants
const PORT = 80;
const HOST = '0.0.0.0';

// App
const app = express();
var song = "Is this tree an AVL? Or a binary tree? Caught in a while loop... No escape from the boolean true. Open your eyes and just insert a break, break free! Im just an udergrad, give me some sympathy... because Im open for changes and closed for expansion. Anyway you teach me dosent really matter to me, to me";
app.get('/', (req, res) => {
    res.send(song);
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);
