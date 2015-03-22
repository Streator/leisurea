'use strict';

var controllers = angular.module('leisureActivity.controllers');
controllers.controller('ActivityByUserCtrl', ['$scope', '$stateParams', 'DatabaseService', 'RecordsPerPage', 'ShortTermCache', 'LongTermCache', 'Facebook',
    function($scope, $stateParams, DatabaseService, RecordsPerPage, ShortTermCache, LongTermCache, Facebook) {
        var recordsOffset = 0;

        $scope.charLimit=500;
        $scope.readMore=function(){
            $scope.charLimit=2000;
        };

        DatabaseService.get("activity",
            {"keywords" : null,
                "ownerId" : $stateParams.userId,
                "categoryId" : null,
                "recordsCount" : RecordsPerPage,
                "recordsOffset" : recordsOffset},
                ShortTermCache).then(
            function(result) {
                $scope.activities = result;
                $scope.loadMoreVisible = result.length == RecordsPerPage;
            });

        DatabaseService.get("user/" + $stateParams.userId, {}, LongTermCache).then(
            function(result) {
                $scope.selectedUser = result[0];
            }
        )

        $scope.loadMore = function() {
            recordsOffset += RecordsPerPage;

            DatabaseService.get("activity",
                {"keywords" : null,
                    "ownerId" : $stateParams.userId,
                    "categoryId" : null,
                    "recordsCount" : RecordsPerPage,
                    "recordsOffset" : recordsOffset},
                    ShortTermCache).then(
                function(result) {
                    $scope.loadMoreVisible = result.length == RecordsPerPage;
                    $scope.activities = $scope.activities.concat(result);
                });
        }

        $scope.getProfilePicture = function (profileId) {
            if (profileId)
                return "https://graph.facebook.com/" + profileId + "/picture?type=large";
            else
                return "http://leisurea.com/img/profile2.png";
        }
    }]);