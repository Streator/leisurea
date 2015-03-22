var mySqlConnector = require("../mySqlConnector");
var FacebookTokenStrategy = require('passport-facebook-token').Strategy;

module.exports = function(passport) {
    passport.use('facebook-token', new FacebookTokenStrategy({
            clientID: '781301478560124',
            clientSecret: 'b972b4275c29cb378329cfcaebbc0752',
            passReqToCallback : true
        },
        function(req, token, refreshToken, profile, done) {

        process.nextTick(function() {
            mySqlConnector.get_user_by_profile(req, profile.id, function(err, results) {
                if (err) {
                    mySqlConnector.log_error(JSON.stringify(err),JSON.stringify(profile), 0);
                    return done(err);
                }

                var rows = results[0];
                console.log("user rows: ", rows);
                if(rows && rows[0]) {
                    return done(null, rows[0]); // user found, return that user
                } else {
                    // if there is no user, create them
                    mergeUser(req, token, profile, done);
                }
            });

        });

    }));
}

var mergeUser = function(req, token, profile, done) {
    mySqlConnector.merge_user(req, profile.emails[0].value,
        profile.id,
        token,
        profile.name.givenName,
        profile.name.familyName,
        profile.displayName,
        profile._json.link,
        function(err, results) {
            if (err) {
                mySqlConnector.log_error(JSON.stringify(err),JSON.stringify(profile), 0);
                return done(null, false);
            }
            return done(null, results[0][0]);
        });
}