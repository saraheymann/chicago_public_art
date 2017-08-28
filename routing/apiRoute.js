var artworks = require('../data/artworks.js');

var path = require('path');

module.exports = function(app) {
    app.get('/api/artworks', function(req, res) {
        res.json(artworks);
    })
}