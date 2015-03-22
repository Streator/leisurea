'use strict';

angular.module('leisureActivity.directives')
    .directive('back', function($state, StateService) {
        return {
            restrict: 'E',
            scope: true,
            template: '<div class="article"><p><button class="btn btn-primary" ng-click="goBack()" ng-show="isVisible"><span class="glyphicon glyphicon-arrow-left"></span></button></p></div>',
            link: function(scope,element,attrs) {
                scope.goBack = function() {
                    var prev = StateService.getPrevState();
                    if (prev) {
                        StateService.isGoingBack = true;
                        $state.go(prev.state, prev.params);
                    }
                }

                scope.$watch(
                    function(){ return StateService.stateStack.length },

                    function(newVal) {
                        scope.isVisible = newVal > 0;
                    }
                );
            }
        }
    });