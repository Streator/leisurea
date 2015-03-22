'use strict';

/* Services */

var serviceModule = angular.module('leisureActivity.services', []);

var serviceURL = 'http://leisurea.com/api/';


serviceModule.factory('DatabaseService', function($http, $q, ShortTermCache, LongTermCache, ShortTermCacheService, LongTermCacheService) {
    return {
        post: function(type, data) {
             return $http.post(serviceURL + type, data);
        },
        put: function(type, data) {
            return $http.put(serviceURL + type, data);
        },
        get: function(type, data, cacheType, needClearCache) { //cacheType 0 - no cache, 1 - short time cache, 2- long term cache
            var cache;
            if (cacheType == ShortTermCache)
                cache = ShortTermCacheService;
            else if(cacheType == LongTermCache)
                cache= LongTermCacheService;

            var deferred = $q.defer();
            var key = type + JSON.stringify(data);

            if (needClearCache)
                cache.remove(key);

            var cachedValue;
            if (cacheType && !needClearCache)
                cachedValue = cache.get(key);

            if (cacheType && cachedValue) {
                deferred.resolve(cachedValue);
            } else {
                $http.get(serviceURL + type, {params:data}).then(function(result) {
                    if (cacheType)
                        cache.put(key, result.data);

                    deferred.resolve(result.data);
                });
            }
            return deferred.promise;
        },
        delete: function(type, data) {
            var requestData = {params:data};
            return $http.delete(serviceURL + type, requestData);
        }
    };
});




