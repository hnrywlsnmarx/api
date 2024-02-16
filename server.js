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

app.get('/employees/searchsalary', (req, res) => {
  const { keyword, salary1, salary2 } = req.query;

  const sqlQuery = `
    SELECT * FROM employee
    WHERE firstName LIKE ? AND basicSalary BETWEEN ? AND ?
  `;

  const searchKeyword = `%${keyword}%`;
  const searchSalary1 = salary1;
  const searchSalary2 = salary2;

  console.log(sqlQuery);

  db.query(sqlQuery, [searchKeyword, searchSalary1, searchSalary2], (err, results) => {
    if (err) {
      res.status(500).json({ message: err.message });
    } else {
      res.json(results);
    }
  });
});

app.get('/employees/:id', (req, res) => {
  const employeeId = req.params.id;
  db.query('SELECT * FROM employee WHERE id = ?', [employeeId], (err, result) => {
    if (err) {
      res.status(500).json({ message: err.message });
    } else {
      if (result.length === 0) {
        res.status(404).json({ message: 'Employee not found' });
      } else {
        res.json(result[0]);
      }
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

app.put('/employees/:id', (req, res) => {
  const employeeId = req.params.id;
  const { userName, firstName, lastName, email, birthDate, basicSalary, marital_status, emp_group, description } = req.body;

  const sqlQuery = 'UPDATE employee SET userName=?, firstName=?, lastName=?, email=?, birthDate=?, basicSalary=?, marital_status=?, emp_group=?, description=? WHERE id=?';

  db.query(sqlQuery, [userName, firstName, lastName, email, birthDate, basicSalary, marital_status, emp_group, description, employeeId], (err, result) => {
    if (err) {
      res.status(400).json({ message: err.message });
      console.error(err.message);
    } else {
      res.status(200).json({ id: employeeId, userName, firstName, lastName, email, birthDate, basicSalary, marital_status, emp_group, description });
    }
  });
});

app.delete('/employees/:id', (req, res) => {
  const employeeId = req.params.id;

  const sqlQuery = 'DELETE FROM employee WHERE id=?';

  db.query(sqlQuery, [employeeId], (err, result) => {
    if (err) {
      res.status(400).json({ message: err.message });
      console.error(err.message);
    } else {
      res.status(200).json({ message: 'Employee deleted successfully', id: employeeId });
    }
  });
});

app.listen(PORT, () => {
  console.log("Server is running on port ${PORT}");
});