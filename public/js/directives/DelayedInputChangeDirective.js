'use strict';

angular.module('leisureActivity.directives')
    .directive('delayedChange', function() {
    return {
        restrict: 'A',
        scope: { handler:'&delayedChange' },
        link: function(scope, element, attrs) {
            var timeout;
            element.on('keyup paste search', function() {
                clearTimeout(timeout);
                timeout = setTimeout(function() {
                    scope.handler();
                }, attrs.delay || 500);
            });
        }
    };
});