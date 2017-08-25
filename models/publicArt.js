var orm = require("../config/orm.js");


var artAction = {
    add: function(artPiece) {
        orm.insertRow(artPiece);
    }
};

module.exports = artAction;