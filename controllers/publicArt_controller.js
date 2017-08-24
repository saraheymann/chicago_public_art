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

    var fileDetectRes = ('./public/assets/img/' + sampleFile.name)

    console.log(fileDetectRes);

    if (('./public/assets/img/' + sampleFile.name) === fileDetectRes){
        res.sendStatus(500);
    }

    // if (!(pathExists.sync('./public/assets/img/' + sampleFile.name))){
    //     fs.mkdir('./public/assets/img/' + sampleFile.name, function (){
    //         sampleFile.mv('./public/assets/img/' + sampleFile.name + '/' + sampleFile.name, function(err){
    //             if (err){
    //                 return res.status(500).send(err);
    //             }
    //             res.send('File uploaded!');
    //     })
    //     })
    // } else {
    //     res.send("same file name");
    // }


});

module.exports = router;