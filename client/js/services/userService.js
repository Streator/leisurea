'use strict';

angular.module('leisureActivity.services')
    .service('UserService', function() {
    this.isLogged = false;
    this.isFbLogged = false;
    this.user = null;
    this.setLogged = function(newVal) {
        this.isLogged = newVal;
    }

    this.setFbLogged = function(newVal) {
        this.isFbLogged = newVal;
    }

    this.setUser = function(newVal) {
        this.user = newVal;
    }
});

