 


(function () {
    'use strict';

    App.config(function ($stateProvider, $urlRouterProvider, $locationProvider, cfpLoadingBarProvider, $httpProvider) {

     
        $locationProvider.hashPrefix('!').html5Mode(true);
        cfpLoadingBarProvider.includeSpinner = true;
        $urlRouterProvider.otherwise('/Login');
       $stateProvider
      .state('Login', {
           url: '/Login',
           templateUrl: '/HtmlTemplates/Login.html',
           controller: "Login",

       }).state('Register', {
           url: '/Register',
           templateUrl: '/HtmlTemplates/Registration.html',
           controller: "Registration",

       }).state('Login.Demo', {
           url: '/Demo',
           templateUrl: '/HtmlTemplates/demo.html',
           // controller: "Registration",
       }).state('App', {
           url: '/App',
           templateUrl: '/Account/AdminLayout',
           controller: "AdminLayoutCtrl",
       }).state('App.Company', {
           url: '/Company',
           templateUrl: 'Company/companyform',
           controller: "CompanyCtrl",
       }).state('App.Property', {
           url: '/{{CompanyId}}/Property',
           templateUrl: '/Property/propertyform',
           controller: "PropertyCtrl",
       }).state('App.Propertylevel', {
           url: '/{{PropertyId}}/Propertylevel',
               templateUrl: '/Property/Propertylevel',
               controller: "Propertylevel",
           }).state('App.ManageProfile', {
               url: '/{{UserId}},{{param}}/ManageProfile',
           templateUrl: '/HtmlTemplates/ManageProfile.html',
           controller: "Registration",
       }).state('App.ManageUsers', {
           url: '/{{searchparam}}/ManageUsers',
           templateUrl: 'Account/ManageUsers',
           controller: "ManageUsersController",
       }).state('App.AddUser', {
           url: '/CreateUsers',
           templateUrl: 'HtmlTemplates/AddUsers.html',
           controller: "Registration",
       }).state('App.ManageUserPermissions', {
           url: '/ManageUserPermissions',
           templateUrl: 'HtmlTemplates/UserPermissions.html',
           controller: "UserPermissions",
       })
    })
})();

App.run(function ($rootScope, cfpLoadingBar, $stateParams, $location, CurrentProfileService) {

    function start() {
        cfpLoadingBar.start();
    };

    function complete() {
        cfpLoadingBar.complete();
    };

    $rootScope
        .$on('$stateChangeStart',
            function (event, toState, toParams, fromState, fromParams) {
                var  Currentprofile = CurrentProfileService.GetCurrentProfile();
                if ($location.path() !== '/Login' && !Currentprofile) {
                    $location.path('/Login');
                }
                else {
                    if ($location.path() == '/Login' && Currentprofile) {
                        $location.path('/App');
                    }
                }
                start();
            });

    $rootScope
        .$on('$stateChangeSuccess',
            function (event, toState, toParams, fromState, fromParams) {
                complete();
                // alert($location.absUrl());
            });
});