var express = require("express");
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

    let image = req.files.image;

    var imgFilePath = '';

    var isImgPresent = detect('./public/assets/img/' + image.name);
    if (isImgPresent == null){
            imgFilePath = ('./public/assets/img/' + image.name);
            image.mv('./public/assets/img/' + image.name, function(err){
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