var mysql = require('mysql');

var connection;
// Connect to JAWS_DB if on Heroku, or a local MySQL instance if not
if (process.env.JAWSDB_URL) {
    connection = mysql.createConnection(process.env.JAWSDB_URL);
} else {

    connection = mysql.createConnection({
        host: 'localhost',
        port: '3306',
        user: 'root',
        password: '',
        database: 'chicago_public',
        multipleStatements: true
    });
};
connection.connect(function(err) {
    if (err) {
        throw err;
    }
});

module.exports = connection;