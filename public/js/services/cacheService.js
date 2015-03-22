'use strict';

angular.module('leisureActivity.services')
    .factory('ShortTermCacheService', function($angularCacheFactory){
        var shortTermCache = $angularCacheFactory('shortTimeDatabaseCache', {
            maxAge: 300000, // Items added to this cache expire after 5 minutes.
            cacheFlushInterval: 3600000, // This cache will clear itself every hour.
            deleteOnExpire: 'aggressive' // Items will be deleted from this cache right when they expire.
        });
        return shortTermCache;
    });

angular.module('leisureActivity.services')
    .factory('LongTermCacheService', function($angularCacheFactory){
        var longTermCache = $angularCacheFactory('DatabaseCache');
        return longTermCache;
    });