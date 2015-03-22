'use strict';

angular.module('leisureActivity.services')
    .service('StateService', function() {
        this.isGoingBack = false;
        this.stateStack = [];
        this.addState = function(state, params) {
            this.stateStack.push({state : state, params : params});
        }

        this.getPrevState = function() {
            return this.stateStack.pop();
        }
    });