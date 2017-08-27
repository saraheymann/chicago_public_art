var mysql = require('mysql');

var connection = mysql.createConnection({
    host: 'localhost',
    port: '3306',
    user:  'root',
    password: 'mariadb*1969',
    database: 'chicago_public',
    multipleStatements: true
});

connection.connect(function(err){
  if(err){
      throw err;
  }
});

module.exports = connection;