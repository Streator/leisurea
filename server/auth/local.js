var mySqlConnector = require("../mySqlConnector");
var LocalStrategy   = require('passport-local').Strategy;

module.exports = function(passport) {
    passport.use('local-login', new LocalStrategy({
            usernameField : 'email',
            passwordField : 'password',
            passReqToCallback : true // allows us to pass back the entire request to the callback
        },
        function(req, email, password, done) {
            return mySqlConnector.check_auth_user(req,email,password,done);
        }
    ));

    passport.use('local-signup', new LocalStrategy({
            usernameField : 'email',
            passwordField : 'password',
            passReqToCallback : true // allows us to pass back the entire request to the callback
        },
        function(req, email, password, done) {
            return mySqlConnector.add_new_user(req, email, password, done);
        }
    ));
}
