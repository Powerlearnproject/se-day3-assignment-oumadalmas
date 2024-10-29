//import packages
const express = require('express');
const session = require('express-session');
const MySQLStore = require('connect-mysql2');
const path = require('path');
require('dotenv').config();

const db = require('./config/db');
const authRoutes = require('./routes/auth');

//initialize server
const app = express();

//set-up middleware
app.use(express.static(path.join(__dirname, '/') ))
app.use(express.json());
app.use(express.urlencoded({ extended: true}));


//routes
app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'index.html'))
})

app.use('/auth', authRoutes);

//start server
const port = process.env.PORT || 3000; 
app.listen(port, () => {
    console.log(`Server is running on http://127.0.0.1:${port}`)
});


