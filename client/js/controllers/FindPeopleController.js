var controllers = angular.module('leisureActivity.controllers');
controllers.controller('FindPeopleCtrl', ['$scope', 'DatabaseService', 'UserService', 'RecordsPerPage', 'ShortTermCache', 'MyActivitiesService',
    function($scope, DatabaseService, UserService, RecordsPerPage, ShortTermCache, MyActivitiesService) {
        var recordsOffset = 0;

        MyActivitiesService.getMyActivities(false).then(
            function(result) {
                $scope.myActivities = result;
            });

        DatabaseService.get("similarUsers",
                {"userId" : UserService.user.user_id,
                "recordsCount" : RecordsPerPage,
                "recordsOffset" : recordsOffset},
                ShortTermCache).then(
            function(result) {
                $scope.loadMoreVisible = result.length == RecordsPerPage;
                $scope.similarUsers = result;
            });

        $scope.filterChangeAction = function() {
            recordsOffset = 0;
            DatabaseService.get("similarUsers",
                {"userId" : UserService.user.user_id,
                    "keywords" : $scope.inKeywords,
                    "recordsCount" : RecordsPerPage,
                    "recordsOffset" : recordsOffset},
                    ShortTermCache).then(
                function(result) {
                    $scope.loadMoreVisible = result.length == RecordsPerPage;
                    $scope.similarUsers = result;
                });
        };

        $scope.loadMore = function() {
            recordsOffset += RecordsPerPage;

            DatabaseService.get("similarUsers",
                {"userId" : UserService.user.user_id,
                    "recordsCount" : RecordsPerPage,
                    "recordsOffset" : recordsOffset},
                    ShortTermCache).then(
                function(result) {
                    $scope.loadMoreVisible = result.length == RecordsPerPage;
                    $scope.similarUsers = $scope.similarUsers.concat(result);
                });
        }

        $scope.getProfilePicture = function (profileId) {
            if (profileId)
                return "https://graph.facebook.com/" + profileId + "/picture";
            else
                return "http://leisurea.com/img/profile2.png";
        }

    }]);