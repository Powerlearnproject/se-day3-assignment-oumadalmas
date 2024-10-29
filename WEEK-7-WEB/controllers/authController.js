const db = require('../config/db');
const bcrypt = require('bcryptjs');

//user registration logic
exports.registerUser = async (req, res) => {
    //fetch data
    const { name, email, password } = req.body;
    try{
        //check if the user exists in database
        const [rows] = await db.execute('SELECT * FROM users WHERE email = ?', [email]);
        if(rows.length > 0){
            return res.status(400).json({ message: 'User already exists'});

        }

        //hash the password
        const hashedPassword = await bcrypt.hash(password, 10);

        //insert the record to db
        await db.execute('INSERT INTO users (name, email, password) VALUES (?, ?, ?)', [
            name,
            email,
            hashedPassword
        ]);

        res.status(201).json({ message: 'User registered successfully.'});
    } catch(error) {
            res.status(500).json({ message: 'An error occured.', error});
        }

}

exports.loginUser = async (request, response) => {
    const { email, password} = request.body;
try{
    //check if user exists
    const [rows] = await db.execute('SELECT * FROM users WHERE email = ?', [email]);
    if(rows.length === 0){
        return response.status(400).json({message: 'User not found! Please register.'})
    }
    const user = rows[0];
    //compare the password
    const isMatch = await bcrypt.compare(password, user.password);
    if(!isMatch){
        return response.status(400).json({message: 'Invalid credentials!'});
    }
    response.status(200).json({ message: 'Login successful!'});
} catch(error) {
        response.status(500).json({ message: 'An error occured!', error});
    }
}

//exports.logoutUser