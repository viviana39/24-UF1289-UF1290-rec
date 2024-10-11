// config.js
const mysql = require("mysql");
require("dotenv").config();

const connection = mysql.createConnection({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,


});

class Database {
  constructor(id, profesor, email) {
    this.id = id;
    this.profesor = profesor;
    this.email = email

  }
  nombrar(){
    return `${this.nombre}nombre ${this.email}`
  }
}

class Student extends Database{
  constructor (id, nombre, email, role){

  }
} 







connection.connect((err) => {
  if (err) {
    console.error("Error connecting to MySQL:", err);
    return;
}
  console.log("Connected to MySQL!");


  module.exports = connection;
})
