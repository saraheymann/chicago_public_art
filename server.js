var express = require('express');
var fs = require('fs');
var methodOverride = require('method-override');
var bodyParser = require('body-parser');
var exphbs = require('express-handlebars');
var router = require('./controllers/publicArt_controller.js');
var fileUpload = require('express-fileupload');
var app = express();


app.set('port', (process.env.PORT || 8080));

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.text());
app.use(bodyParser.json({ type: "application/vnd.api+json" }));

app.use(methodOverride("_method"));

app.use(express.static(process.cwd() + '/public'));

app.engine('handlebars', exphbs({defaultLayout: 'main'}));
app.set('view engine', 'handlebars');

app.use(fileUpload());

app.use('/', router);

app.listen(app.get('port'), function(){
    console.log('running on 8080')
});