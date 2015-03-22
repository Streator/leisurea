'use strict';

var controllers = angular.module('leisureActivity.controllers');
controllers.controller('ActivityByCategoryCtrl', ['$scope', '$stateParams', 'DatabaseService', 'RecordsPerPage', 'ShortTermCache',
    function($scope, $stateParams, DatabaseService, RecordsPerPage, ShortTermCache) {
        var recordsOffset = 0;

        $scope.charLimit=500;
        $scope.readMore=function(){
            $scope.charLimit=2000;
        };

        DatabaseService.get("activity",
                                    {"keywords" : null,
                                    "ownerId" : null,
                                    "categoryId" : $stateParams.categoryId,
                                    "recordsCount" : RecordsPerPage,
                                    "recordsOffset" : recordsOffset},
                                    ShortTermCache).then(
            function(result) {
                $scope.activities = result;
                $scope.loadMoreVisible = result.length == RecordsPerPage;
            });

        $scope.loadMore = function() {
            recordsOffset += RecordsPerPage;

            DatabaseService.get("activity",
                {"keywords" : null,
                    "ownerId" : null,
                    "categoryId" : $stateParams.categoryId,
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
                return "https://graph.facebook.com/" + profileId + "/picture";
            else
                return "http://leisurea.com/img/profile2.png";
        }
    }]);