'use strict';

angular.module('leisureActivity.directives', [])
    .directive('easedInput', function($timeout) {
        return {
            restrict: 'E',
            template: '<input class="my-eased-input" type="text" ng-model="currentInputValue" ng-change="update()" placeholder="{{placeholder}}"/>',
            scope: {
                value: '=',
                timeout: '@',
                placeholder: '@'
                },
            transclude: true,
            link: function ($scope) {
                $scope.timeout = parseInt($scope.timeout);
                $scope.update = function() {
                if ($scope.pendingPromise) { $timeout.cancel($scope.pendingPromise); }
            $scope.pendingPromise = $timeout(function () {
                $scope.value = $scope.currentInputValue
                }, $scope.timeout);
            };
            }
            }
            });