'use strict';

angular.module('leisureActivity.services')
    .factory('LookupService', function(DatabaseService, LongTermCache) {

        return {types: function() {
            return DatabaseService.get("type", {}, LongTermCache);
        }};
    }
);