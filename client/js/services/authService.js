'use strict';

angular.module('leisureActivity.services')
    .factory('Auth', function($http, UserService, $state, flash){

        var signIn = function (userData) {
            if (userData) {
                $http.post('/login', userData).then(handleLogin, handleLoginError);
            }
        };

        var signUp = function (userData) {
            if (userData) {
                $http.post('/signup', userData).then(handleSignup, handleSignupError);
            }
        };

        var checkLoggedIn = function (successState, successStateParams, notLoggedState, notLoggedStateParams) {
            $http.post('/loggedin').success(function(response) {
                if (response.error) {
                    setUser(false, {});
                    $state.go(notLoggedState, notLoggedStateParams);
                } else {
                    setUser(true, response)
                    $state.go(successState, successStateParams);
                }
            });
        };

        var signOut = function () {
            $http.post("/logout").then(
                function() {
                    setUser(false, {});
                    $state.go('login');
                });
        };

        var fbSignIn = function (fbData) {
            $http.post('/auth/facebook/token', fbData).success(handleFbResponse);
        };

//------------------------------------------------------------------------------------------------------
        var setUser = function(isLogged, user) {
            UserService.setLogged(isLogged);
            UserService.setUser(user);
        }


        var handleFbResponse = function(response) {
            if (response.error) {
                setUser(false, {});
            } else {
                setUser(true, response);
                $state.go('main.home');
            }
        }

        var handleLogin = function(response) {
            handleResponse(response.data, 'flash-login');
        }

        var handleSignup = function(response) {
            handleResponse(response.data, 'flash-signup');
        }

        var handleResponse = function(response, flashTarget) {
            if (response.error) {
                flash.to(flashTarget).error = response.message;
                setUser(false, {});
            } else {
                // No error: authentication OK
                setUser(true, response);
                $state.go('main.home');
            }
        }

        var handleLoginError = function(response) {
            handleError('flash-login');
        }

        var handleSignupError = function(response) {
            handleError('flash-signup');
        }

        var handleError = function(flashTarget) {
            flash.to('flash-signup').error = 'An error occured. Please try again later';
            setUser(false, {});
        }


        return {
            signIn: signIn,
            signUp: signUp,
            signOut: signOut,
            fbSignIn: fbSignIn,
            checkLoggedIn: checkLoggedIn
        }
    });
