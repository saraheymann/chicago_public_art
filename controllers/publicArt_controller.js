var express = require("express");
// // import models
// // var burgerAction = require("../models/burger.js");
var router = express.Router();

router.get("/", function(req,res){
    res.render("index");
});

router.post("/upload", function(req, res){
    console.log("this works?");
    console.log(req.files);
    if(!req.files){
        return res.status(400).send('No files were uploaded.');
    }
    let sampleFile = req.files.sampleFile;
    console.log(sampleFile);
    sampleFile.mv('./public/assets/img/' + sampleFile.name, function(err){
        if (err){
            return res.status(500).send(err);
        }
        res.send(alert("File uploaded!"));
    })
});

module.exports = router;