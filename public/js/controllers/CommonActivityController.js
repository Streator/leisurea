'use strict';

var controllers = angular.module('leisureActivity.controllers');
controllers.controller('CommonActivityCtrl', ['$scope', '$stateParams', 'DatabaseService', 'UserService', 'ShortTermCache',
    function($scope, $stateParams, DatabaseService, UserService, ShortTermCache) {
        DatabaseService.get("commonActivity",
            {"currentUserId" : UserService.user.user_id,
             "userId" : $stateParams.userId },
            ShortTermCache).then(
            function(result) {
                $scope.activities = result;
            });
    }]);