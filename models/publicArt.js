var orm = require("../config/orm.js");


var artAction = {
    add: function(artPiece) {
        orm.insertRow(artPiece);
    },
    all: function(cb){
        orm.selectAll("art", function(res){
            cb(res);
            }
        );
    }
};

module.exports = artAction;