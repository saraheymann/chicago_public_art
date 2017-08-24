var express = require("express");
var pathExists = require('path-exists');
var detect = require('detect-file');
var fs = require('fs');
// // import models
// // var burgerAction = require("../models/burger.js");
var router = express.Router();

router.get("/", function(req,res){
    res.render("index");
});

router.post("/upload", function(req, res){
    if(!req.files){
        return res.status(400).send('No files were uploaded.');
    }

    let sampleFile = req.files.sampleFile;

    var imgFilePath = '';
    
    var isImgPresent = detect('./public/assets/img/' + sampleFile.name);
    if (isImgPresent == null){
            imgFilePath = ('./public/assets/img/' + sampleFile.name);
            sampleFile.mv('./public/assets/img/' + sampleFile.name, function(err){
                if (err){
                    return res.status(500).send(err);
                }
                res.send('File uploaded!');
            })
        
       
    } else {
         res.send("file didn't upload because the same name exists on the server.  Please rename and try again.");
    }
    console.log(imgFilePath);
});

module.exports = router;