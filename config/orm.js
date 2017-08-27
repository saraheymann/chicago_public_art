var connection = require("./connection.js");

var orm = {
  insertRow: function(artPiece) {
    var queryString = "insert into art set ?";
    connection.query(queryString, {path: artPiece.filePath, description: artPiece.description, lat: artPiece.lat, long: artPiece.long});
  },
  selectAll: function(displayTable, cb){
    var queryString = "SELECT * FROM ??";
    connection.query(queryString, [displayTable], function(err, result){
      if (err){throw err;
      }
      cb(result);
    });
  }
};

module.exports = orm;