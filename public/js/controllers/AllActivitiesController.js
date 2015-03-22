'use strict';

var controllers = angular.module('leisureActivity.controllers', []);
controllers.controller('AllActivitiesCtrl', ['$scope', 'DatabaseService', 'RecordsPerPage', 'LookupService', '$modal', 'ShortTermCache', 'UserService',
    function($scope, DatabaseService, RecordsPerPage, LookupService, $modal, ShortTermCache, UserService) {

        var recordsOffset = 0;
        $scope.orderBy = 5; //Popular

        $scope.init = function() {
            LookupService.types().then(
                function(result) {
                    $scope.activityTypes = result;
                });
            $scope.filterChangeAction();
        }

        $scope.filterChangeAction = function() {
            recordsOffset = 0;
            DatabaseService.get( "category",
                                {"keywords" : $scope.inKeywords,
                                "activityType" : $scope.inType,
                                "orderBy" : $scope.orderBy,
                                "recordsCount" : RecordsPerPage,
                                "recordsOffset" : recordsOffset},
                                ShortTermCache).then(
                function(result) {
                    $scope.activityCategories = result;
                    $scope.loadMoreVisible = result.length == RecordsPerPage;
                });
        };

        $scope.loadMore = function() {
            recordsOffset += RecordsPerPage;

            DatabaseService.get( "category",
                {"keywords" : $scope.inKeywords,
                    "activityType" : $scope.inType,
                    "orderBy" : $scope.orderBy,
                    "recordsCount" : RecordsPerPage,
                    "recordsOffset" : recordsOffset},
                    ShortTermCache).then(
                function(result) {
                    $scope.loadMoreVisible = result.length == RecordsPerPage;
                    $scope.activityCategories = $scope.activityCategories.concat(result);
                });
        }

        $scope.sortingChange = function(orderBy) {
            $scope.orderBy = orderBy;
            $scope.filterChangeAction();
        }

        $scope.openModal = function (item) {

            var modalInstance = $modal.open({
                templateUrl: 'partials/modals/addActivity.html',
                controller: ModalInstanceCtrl,
                resolve: {
                    activityItem: function () {
                        return {title: item.name, type_id: item.type_id};
                    }
                }
            });
        }

        $scope.$watch(
            function(){ return UserService.isLogged },

            function(newVal) {
                $scope.isLogged = newVal;
            }
        );

        var ModalInstanceCtrl = function ($scope, $modalInstance, activityItem, MyActivitiesService) {
            $scope.activityItem = activityItem;

            $scope.saveHandler = function (result) {
                MyActivitiesService.clearCache();
                $modalInstance.close();
            };

            $scope.close = function () {
                $modalInstance.close();
            };

        };


        }]);