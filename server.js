'use strict';

const express = require('express');

const logic = require("./logic");

// Constants
const PORT = 8080;

// App
const app = express();
app.get('/', function (req, res) {
    res.send(`Answer is ${logic.answer}`);
});

app.listen(PORT);
console.log('Running on http://localhost:' + PORT);