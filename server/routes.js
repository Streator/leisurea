var mySqlConnector = require("./mySqlConnector");
var mysql = require('mysql');
var bcrypt   = require('bcrypt-nodejs');

var auth = function(req, res, next){
    if (!req.isAuthenticated())
    {
        res.cookie('user', null);
        res.send(401);
    }
    else
        next();
};

var handleAuthentication = function(err, user, info){

}

var generateHash = function(password) {
    return bcrypt.hashSync(password, bcrypt.genSaltSync(8), null);
};

module.exports = function (app, passport) {
    app.get('/api/activity', auth, function(req, res){
        var params = req.query;
        var statement = "CALL get_activities(" + mysql.escape(params.ownerId) + "," +
            mysql.escape(params.categoryId) + "," +
            mysql.escape(params.cityId) + "," +
            mysql.escape(params.typeId) + "," +
            mysql.escape(params.recordsCount) + "," +
            mysql.escape(params.recordsOffset) + ");";
        mySqlConnector.query(statement, req, res);
    });

    app.get('/api/type', function(req, res){
        var params = req.query;
        var statement = "CALL get_types();";
        mySqlConnector.query(statement, req, res);
    });

    app.get('/api/category', function(req, res){
        var params = req.query;
        var statement = "CALL get_categories_count("  + mysql.escape(params.activityType) + "," +
                                                        mysql.escape(params.keywords) +  "," +
                                                        mysql.escape(params.orderBy) +  "," +
                                                        mysql.escape(params.recordsCount) + "," +
                                                        mysql.escape(params.recordsOffset) + ");";
        mySqlConnector.query(statement, req, res);
    });

    app.get('/api/categoryDict', function(req, res){
        var params = req.query;
        var statement = "CALL get_categories(" + mysql.escape(params.keywords) + ");";
        mySqlConnector.query(statement, req, res);
    });

    app.get('/api/similarUsers', auth, function(req, res){
        var params = req.query;
        var statement = "CALL get_similar_users(" + mysql.escape(params.userId) + "," +
                                                    mysql.escape(params.keywords) +  "," +
                                                    mysql.escape(params.recordsCount) + "," +
                                                    mysql.escape(params.recordsOffset) + ");";
        mySqlConnector.query(statement, req, res);
    });

    app.get('/api/commonActivity', auth, function(req, res){
        var params = req.query;
        var statement = "CALL get_common_activities(" + mysql.escape(params.currentUserId) + "," +
            mysql.escape(params.userId) + ");";
        mySqlConnector.query(statement, req, res);
    });

    app.get('/api/user/:userId', auth, function(req, res){
        var statement = "CALL get_user_by_id(" + mysql.escape(req.param("userId")) + ");";
        mySqlConnector.query(statement, req, res);
    });

    app.get('/', function(req, res) {
        res.redirect("/index.html");
    });

    app.post('/api/activity', auth, function(req, res) {
        var params = req.body;
        var statement = "CALL insert_activity(" + mysql.escape(params.description) + "," +
            mysql.escape(params.ownerId) + "," +
            mysql.escape(params.cityId) +"," +
            mysql.escape(params.typeId) + "," +
            mysql.escape(params.categoryId) + "," +
            mysql.escape(params.categoryName) +  ");";
        mySqlConnector.query(statement, req, res);
    });

    app.put('/api/activity', auth, function(req, res) {
        var params = req.body;
        var statement = "CALL update_activity(" + mysql.escape(params.activityId) + "," +
            mysql.escape(params.description) + "," +
            mysql.escape(params.typeId) + "," +
            mysql.escape(params.categoryId) + "," +
            mysql.escape(params.categoryName) +  ");";
        mySqlConnector.query(statement, req, res);
    });

    app.put('/api/user', auth, function(req, res) {
        var params = req.body;
        var statement = "CALL update_user(" + mysql.escape(params.userId) + "," +
            mysql.escape(params.displayName) + "," +
            mysql.escape(params.email) + "," +
            mysql.escape(generateHash(params.password)) +  ");";
        mySqlConnector.query(statement, req, res);
    });

    app.delete('/api/activity', auth, function(req, res) {
        var params = req.query;
        var statement = "CALL delete_activity(" + mysql.escape(params.activityId) +  ");";
        mySqlConnector.query(statement, req, res);
    });

    //--------------------------- authentication ----------------------------------------------------

    app.post('/login', function(req, res, next) {
        passport.authenticate('local-login', function(err, user, info) {
            if (err) {
                return next(err); // will generate a 500 error
            }
            // Generate a JSON response reflecting authentication status
            if (! user) {
                return res.send({ error : true, message : info.message });
            }
            //login valid user
            req.logIn(user, function(err) {
                if (err) {
                    return next(err);
                }
                return res.send(req.user);
            })
        })(req, res, next);
    });

    app.post('/signup', function(req, res, next) {
        passport.authenticate('local-signup', function(err, user, info) {
            if (err) {
                return next(err); // will generate a 500 error
            }
            // Generate a JSON response reflecting authentication status
            if (! user) {
                return res.send({ error : true, message : info.message });
            }
            //login valid user
            req.logIn(user, function(err) {
                if (err) {
                    return next(err);
                }
                return res.send(req.user);
            })
        })(req, res, next);
    });

    app.post('/auth/facebook/token',
        passport.authenticate('facebook-token'),
        function (req, res) {
            if (! req.user) {
                res.send({ error : true});
            } else {
                res.send(req.user);
            }
        }
    );

    app.post('/loggedin', function(req, res) {
        res.send(req.isAuthenticated() ? req.user : { error : true});
    });

    app.post('/logout', function(req, res){
        req.logOut();
        res.send(200);
    });
}

