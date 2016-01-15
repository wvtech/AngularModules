'use strict';
App.controller('AdminLayoutCtrl', function ($location, $state, $scope, $rootScope, $stateParams, CityService, StateService,  CurrentProfileService, GetPermissionsService) {
  
    $scope.Currentprofile = CurrentProfileService.GetCurrentProfile();

    $scope.access = {};
    console.log($scope.Currentprofile, 'AdminLayout');
     $scope.logout = function () {
       CurrentProfileService.logout();
        $location.path('/Login');
     }

     GetAccessibility();
     function GetAccessibility() {
         var data = { "RoleId": $scope.Currentprofile.RoleId, "OrgId": $scope.Currentprofile.OrgId, "UserId": $scope.Currentprofile.UserId };
         var responce = GetPermissionsService.DashBoardAccessibility(data);
         responce.then(function (data) {          
             $scope.access = data.data;
             console.log($scope.access, '$scope.access on AdminLayout');

         }, function (error) {
             
         });
     }


});
