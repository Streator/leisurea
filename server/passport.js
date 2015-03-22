
module.exports = function(passport) {

    require("./auth/local")(passport);
    require("./auth/facebookToken")(passport);

    // Serialized and deserialized methods when got from session
    passport.serializeUser(function(user, done) {
        done(null, user);
    });

    passport.deserializeUser(function(user, done) {
        done(null, user);
    });

}