'use strict';

const express = require('express');

const logic = require("./logic");

// Constants
const PORT = 8080;

// App
const app = express();
app.use(function (req, res, next) {
    res.setHeader('Access-Control-Allow-Origin', '*');
    res.setHeader('Access-Control-Allow-Methods', 'GET');
    next();
});

app.get('/', function (req, res) {
    res.send(`${logic.answer()}`);
});

app.listen(PORT);
console.log('Running on http://localhost:' + PORT);