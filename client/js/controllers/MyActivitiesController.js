'use strict';

var controllers = angular.module('leisureActivity.controllers');

controllers.controller('MyActivitiesCtrl', ['$scope', '$timeout', 'DatabaseService', 'UserService', 'LookupService', 'MyActivitiesService',
    function($scope, $timeout, DatabaseService, UserService, LookupService, MyActivitiesService) {

        $scope.currentUser = UserService;

        $scope.newActivity = {};

        $scope.init = function() {
            LookupService.types().then(
                function(result) {
                    $scope.activityTypes = result;
                });

            $scope.getMyActivities(false);
            $scope.isCollapsed = true;
        };

        $scope.getMyActivities = function(needClearCache) {
            MyActivitiesService.getMyActivities(needClearCache).then(
                function(result) {
                    $scope.activities = result;
                });
        };

        $scope.addNewActivityHandler = function(result) {
                    $scope.newActivity = {};
                    $scope.getMyActivities(true);

        };

        $scope.updateActivityHandler = function(result) {
                    $scope.getMyActivities(true);

        };

        $scope.deleteActivity = function(activityObj) {
            if(!activityObj.activity_id) return;

            return DatabaseService.delete("activity", {"activityId" : activityObj.activity_id}).then(
                function(result) {
                    var index = $scope.activities.indexOf(activityObj)
                    $scope.activities.splice(index, 1);
                    MyActivitiesService.clearCache();
                });
        };

        $scope.getProfilePicture = function (profileId) {
            if (profileId)
                return "https://graph.facebook.com/" + profileId + "/picture?type=large";
            else
                return "http://leisurea.com/img/profile2.png";
        }

    }]);