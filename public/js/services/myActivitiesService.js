angular.module('leisureActivity.services')
    .service('MyActivitiesService', function(DatabaseService, $q, UserService, LongTermCache, LongTermCacheService) {

        this.clearCache = function() {
            var key = "activity" + JSON.stringify({"ownerId" : UserService.user.user_id,
                                                    "recordsCount" : 1000,
                                                    "recordsOffset" : 0});
            LongTermCacheService.remove(key);
        };

        this.getMyActivities = function(needClearCache) {
            return DatabaseService.get("activity",
                                        {"ownerId" : UserService.user.user_id,
                                        "recordsCount" : 1000,
                                        "recordsOffset" : 0},
                                        LongTermCache,
                                        needClearCache);
        }

    });