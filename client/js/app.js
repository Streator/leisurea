'use strict';

var app = angular.module('leisureActivity', [
  'ngCookies',
  'ui.router',
  'jmdobry.angular-cache',
  'duScroll',
  'leisureActivity.services',
  'leisureActivity.directives',
  'leisureActivity.controllers',
  'ui.bootstrap',
  'angular-flash.service',
  'angular-flash.flash-alert-directive',
  'facebook'
]);

app.config(['$stateProvider', '$urlRouterProvider', '$httpProvider', 'FacebookProvider',
            function($stateProvider, $urlRouterProvider, $httpProvider, FacebookProvider) {

    FacebookProvider.init('781301478560124');

    $urlRouterProvider.otherwise("/home");

    $httpProvider.responseInterceptors.push(function($q, $location, UserService) {
        return function(promise) {
            return promise.then(
            // Success: just return the response
             function(response){
                 return response;
             }, // Error: check the error status to get only the 401
             function(response) {
                 if (response.status === 401) {
                     UserService.setLogged(false);
                     UserService.setUser({});
                     $location.url('/login');
                 }
                 return $q.reject(response); }
            ); }
    });

    $stateProvider
        .state('login', {
            url: '/login',
            controller: 'LoginCtrl',
            templateUrl: 'partials/login.html'
        })
        .state('main', {
            abstract: true,
            controller: 'MainCtrl',
            templateUrl: 'partials/main.html'
        })
        .state('main.home', {
            url: '/home',
            controller: 'AllActivitiesCtrl',
            templateUrl: 'partials/main/allActivities.html',
            isSecured: true
        })
        .state('main.profile', {
            url: '/profile',
            controller: 'MyActivitiesCtrl',
            templateUrl: 'partials/main/myActivities.html',
            isSecured: true
        })
        .state('main.activityByCategory', {
            url: '/activityByCategory/:categoryId',
            controller: 'ActivityByCategoryCtrl',
            templateUrl: 'partials/main/activityByCategory.html',
            isSecured: true
        })
        .state('main.activityByUser', {
            url: '/activityByUser/:userId',
            controller: 'ActivityByUserCtrl',
            templateUrl: 'partials/main/activityByUser.html',
            isSecured: true
        })
        .state('main.people', {
            url: '/people',
            controller: 'FindPeopleCtrl',
            templateUrl: 'partials/main/findPeople.html',
            isSecured: true
        })
        .state('main.commonActivities', {
            url: '/commonActivities/:userId',
            controller: 'CommonActivityCtrl',
            templateUrl: 'partials/main/commonActivities.html',
            isSecured: true
        })
        .state('main.about', {
            url: '/about',
            templateUrl: 'partials/about.html'
        })
}]);


app.run(['$rootScope', 'Auth', 'UserService', '$state', 'StateService', '$document', '$location',
    function ($rootScope, Auth, UserService, $state, StateService, $document, $location) {

        $rootScope.$on("$stateChangeStart",
            function (event, toState, toParams,
                      fromState, fromParams) {

                if (!UserService.user) {
                    event.preventDefault();
                    if (toState.isSecured)
                        Auth.checkLoggedIn(toState.name, toParams, 'login');
                    else
                        Auth.checkLoggedIn(toState.name, toParams, toState.name, toParams);
                    return;
                }

                if (toState.isSecured && !UserService.isLogged) {
                    event.preventDefault();
                    $state.go('login');
                }

                if (fromState.name && !StateService.isGoingBack) {
                    StateService.addState(fromState, fromParams);
                }
                else {
                    StateService.isGoingBack = false;
                }
                $document.scrollTop(0);
                ga('send', 'pageview', { 'page': $location.path(), 'title': toState.name });
            });

}]);
