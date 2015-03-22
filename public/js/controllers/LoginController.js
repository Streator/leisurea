var controllers = angular.module('leisureActivity.controllers');
controllers.controller('LoginCtrl', function($scope, $rootScope, $http, $state, Auth, UserService, Facebook) {
    // This object will be filled by the form
    $scope.user = {};

    $scope.login = function(){
        Auth.signIn( {email: $scope.user.email, password: $scope.user.password});
    };

    $scope.signup = function(){
        Auth.signUp( {email: $scope.user.email, password: $scope.user.password, displayName: $scope.user.displayName});
    };

    // Here, usually you should watch for when Facebook is ready and loaded
    $scope.$watch(function() {
        return Facebook.isReady(); // This is for convenience, to notify if Facebook is loaded and ready to go.
    }, function(newVal) {
        $scope.facebookReady = true; // You might want to use this to disable/show/hide buttons and else
    });

    $scope.fbLogin = function() {
        Facebook.login(function(response) {
            UserService.setFbLogged(true);
            Auth.fbSignIn({'access_token' : response.authResponse.accessToken});
        }, {scope: 'email,user_location'});
    };

});