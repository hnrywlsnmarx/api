const express = require('express');
const mysql = require('mysql2');
const bodyParser = require('body-parser');
const cors = require('cors');
const app = express();
const PORT = 3000;
const router = express.Router();

app.use(bodyParser.json());

const db = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'assesment_emp_man',
});

db.connect((err) => {
  if (err) {
    console.error('Koneksi ke database gagal: ', err);
  } else {
    console.log('Terhubung ke database MySQL');
  }
});

app.use(cors());

app.use((req, res, next) => {
  res.header('Access-Control-Allow-Headers', '*');
  next();
});


app.get('/', (req, res) => {
  res.send('API');
});

app.get('/employees', (req, res) => {
  db.query('SELECT * FROM employee', (err, results) => {
    if (err) {
      res.status(500).json({ message: err.message });
    } else {
      res.json(results);
    }
  });
});

app.get('/employees/search', (req, res) => {
  const { keyword, status } = req.query;

  const sqlQuery = `
    SELECT * FROM employee
    WHERE firstName LIKE ? AND marital_status LIKE ?
  `;

  const searchKeyword = `%${keyword}%`;
  const searchStatus = `%${status}%`;

  db.query(sqlQuery, [searchKeyword, searchStatus], (err, results) => {
    if (err) {
      res.status(500).json({ message: err.message });
    } else {
      res.json(results);
    }
  });
});

app.get('/employees/limit', (req, res) => {
  const { limit } = req.query;

  const sqlQuery = `
    SELECT * FROM employee
    WHERE firstName LIMIT ?`;

  const limitSet = limit;
  

  db.query(sqlQuery, [limitSet], (err, results) => {
    if (err) {
      res.status(500).json({ message: err.message });
    } else {
      res.json(results);
    }
  });
});

app.post('/employees', (req, res) => {
  const { userName, firstName, lastName, email, birthDate, basicSalary, marital_status, emp_group, description } = req.body;

  const sqlQuery = 'INSERT INTO employee (userName, firstName, lastName, email, birthDate, basicSalary, marital_status, emp_group, description) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)';
  

  db.query(sqlQuery, [userName, firstName, lastName, email, birthDate, basicSalary, marital_status, emp_group, description], (err, result) => {
    if (err) {
      res.status(400).json({ message: err.message });
      console.error(err.message);
    } else {
      res.status(201).json({ id: userName, firstName, lastName, email, birthDate, basicSalary, marital_status, emp_group, description });
    }
  });
});

app.listen(PORT, () => {
  console.log("Server is running on port ${PORT}");
});