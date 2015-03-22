'use strict';

var controllers = angular.module('leisureActivity.controllers');
controllers.controller('MainCtrl', ['$scope', '$state', 'UserService', 'Auth', 'Facebook', '$modal', 'DatabaseService',
    function($scope, $state, UserService, Auth, Facebook, $modal, DatabaseService) {

        $scope.init = function() {
//            Auth.checkLoggedIn();
        }

        $scope.currentUser = UserService;

        $scope.logout = function() {
            Auth.signOut();
            if (UserService.isFbLogged) {
                Facebook.logout();
            }
        }

        $scope.openAccountModal = function () {

            var modalInstance = $modal.open({
                templateUrl: 'partials/modals/accountSettings.html',
                controller: ModalInstanceCtrl

            });
        }

        var ModalInstanceCtrl = function ($scope, $modalInstance, MyActivitiesService) {
            $scope.currentUser = JSON.parse(JSON.stringify(UserService.user));
            $scope.save = function (result) {
                if ($scope.currentUser.newPassword != $scope.currentUser.repeatNewPassword)
                {
                    return;
                }

                DatabaseService.put( "user",
                    {"userId" : $scope.currentUser.user_id,
                        "displayName" : $scope.currentUser.display_name,
                        "email" : $scope.currentUser.email,
                        "password" : $scope.currentUser.newPassword}).then(
                    function(result) {
                        UserService.user.display_name = $scope.currentUser.display_name;
                    });
                $modalInstance.close();
            };

            $scope.close = function () {
                $modalInstance.close();
            };

        };


        $scope.$watch(
            function(){ return UserService.isLogged },

            function(newVal) {
                $scope.isLogged = newVal;
            }
        );

        $scope.$watch(
            function(){ return UserService.user },

            function(newVal) {
                $scope.user = newVal;
            }
        )
    }]);