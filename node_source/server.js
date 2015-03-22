var express = require('express');
var path = require('path');
var cors = require('cors');

var app = express();

app.use(cors());

app.use(express.static(path.join(__dirname, '../public')));
app.use(express.cookieParser("secret"));
app.use(express.bodyParser());
app.use(express.session({secret: 'keyboard cat'}));

var passport = require('passport');
require('./passport')(passport);
app.use(passport.initialize());
app.use(passport.session());
app.use(app.router);

require("./routes")(app, passport);

app.listen(80);
