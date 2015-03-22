'use strict';

angular.module('leisureActivity.directives')
    .directive('activityEditor', function(LookupService, DatabaseService, UserService, MyActivitiesService, ShortTermCache) {
        return {
            restrict: 'E',
            scope: {
                activity: '=activity',
                saveHandler: '&saveaction',
                deleteAction: '&deleteAction'
            },
            templateUrl: 'partials/main/editActivity.html',
            link: function(scope,element,attrs) {
                MyActivitiesService.getMyActivities(false).then(
                    function(result) {
                        scope.allactivities = result;
                        scope.checkCategoryExists();
                    });

                if (!scope.activity || !scope.activity.activity_id) {
                    scope.isNew = true;
                }

                scope.getCategories = function(val) {
                    return DatabaseService.get("categoryDict", {"keywords" : val }, ShortTermCache).then(
                        function(result) {
                            return result;
                        });
                };

                scope.categoryChange = function() {
                        if (scope.activity.title && scope.activity.title.hasOwnProperty('type_id')) {
                            scope.activity.type_id = scope.activity.title.type_id;
                        }
                        scope.checkCategoryExists();
                    };

                scope.checkCategoryExists = function() {
                        if (!scope.activity.title) {
                            scope.isCategoryExisting = true;
                            return;
                        }

                        var currentCategoryName;
                        if (typeof scope.activity.title == 'string' || scope.activity.title instanceof String) {
                            currentCategoryName = scope.activity.title;
                        } else if (scope.activity.title && scope.activity.title.hasOwnProperty('name')) {
                            currentCategoryName = scope.activity.title.name;
                        } else {
                            scope.isCategoryExisting = true;
                            return;
                        }

                        var length = scope.allactivities.length;
                        for (var i = 0; i < length; i++) {
                            if(scope.allactivities[i].title &&
                                scope.allactivities[i].title.toUpperCase() == currentCategoryName.toUpperCase() &&
                                scope.allactivities[i].activity_id != scope.activity.activity_id) {
                                scope.isCategoryExisting = true;
                                scope.dynamicPopover = scope.isCategoryExisting ? "You have already added this activity" : null;
                                return;
                            }
                        }
                        scope.isCategoryExisting = false;
                        scope.dynamicPopover = scope.isCategoryExisting ? "You have already added this activity" : null;
                    };

                LookupService.types().then(
                    function(result) {
                        scope.activityTypes = result;
                    });

                scope.checkDescription = function() {
                    scope.isDescriptionEmpty = (!scope.activity.description || scope.activity.description.replace(/\s/g,"") == "");
                }

                scope.save = function(activityObj) {
                    if(scope.isNew)
                        scope.addNewActivity(activityObj);
                    else
                        scope.updateActivity(activityObj);
                }

                scope.addNewActivity = function(activityObj) {
                    var categoryId = (activityObj.title && activityObj.title.hasOwnProperty('category_id')) ? activityObj.title.category_id : null;
                    var categoryName = categoryId ? "" : activityObj.title;

                    return DatabaseService.post("activity",
                        {  "description" : activityObj.description,
                            "ownerId" : UserService.user.user_id,
                            "cityId" : 1,
                            "typeId" : activityObj.type_id,
                            "categoryId" : categoryId,
                            "categoryName" : categoryName}).then(scope.saveHandler);
                };

                scope.updateActivity = function(activityObj) {
                    var categoryId = (activityObj.title && activityObj.title.hasOwnProperty('category_id')) ? activityObj.title.category_id : null;
                    var categoryName = categoryId ? "" : activityObj.title;


                    return DatabaseService.put("activity",
                        {  "activityId" : activityObj.activity_id,
                            "description" : activityObj.description,
                            "typeId" : activityObj.type_id,
                            "categoryId" : categoryId,
                            "categoryName" : categoryName}).then(scope.saveHandler);
                };

            }
        };
    })