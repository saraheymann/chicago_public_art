var express = require("express");
var detect = require('detect-file');
var fs = require('fs');
var artAction = require("../models/publicArt.js");
var router = express.Router();
var NodeGeocoder = require('node-geocoder');

var options = {
    provider: 'google',
   
    // Optional depending on the providers
    httpAdapter: 'https', // Default
    apiKey: 'YOU NEED TO ADD THIS!!!', // for Mapquest, OpenCage, Google Premier
    formatter: null         // 'gpx', 'string', ...
  };

var geocoder = NodeGeocoder(options);


router.get("/table", function(req,res){

    artAction.all(function(data){
        var artTableList = {
            art:data
        };
        res.send(artTableList);
    });
    
});

router.get("/", function(req,res){
        res.render("index");
});
    

router.post("/upload", function(req, res){
    var geoLat = '';
    var geoLong = '';
    var newArtDetails = {};
    //file upload env setup
    var imgFilePath = '';
    let image = req.files.image;
    var isImgPresent = detect('./public/assets/img/' + image.name);

    if(!req.files){
        return res.status(400).send('No files were uploaded.');
    }
    geocoder.geocode(req.body.address)
    .then(function(res) {
        geoLat = res[0].latitude;
        geoLong = res[0].longitude;
      imageUpload();
    })
    .catch(function(err) {
      console.log(err);
    });
    
    function imageUpload() {
        if (isImgPresent == null){
            if (image.mimetype !== 'image/png' && image.mimetype !== 'image/jpeg'){
                return res.send("You tried uploading a bad filetype.  Please upload PNG or JPEG files ONLY!")
            }
                imgFilePath = ('/public/assets/img/' + image.name);
                image.mv('./public/assets/img/' + image.name, function(err){
                    if (err){
                        return res.status(500).send(err);
                    }
                })
        } else {
             res.send("file didn't upload because the same name exists on the server.  Please rename and try again.");
             return;
        }
        newArtObject();
        artAction.add(newArtDetails);


    }

    function newArtObject(){
        newArtDetails = {
            description: req.body.description,
            address: req.body.address,
            lat: geoLat,
            long: geoLong,
            filePath: imgFilePath
        }
    }   
 
});

module.exports = router;