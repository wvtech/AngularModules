(function () {
    'use strict';


    App.controller('Registration', Registration);

    Registration.$inject = ['$location','$state', '$rootScope', '$scope', 'FlashService', 'RegistrationService', 'CityService', 'StateService', 'RoleService','$stateParams', 'CurrentProfileService','ManageProfileServices'];
    function Registration($location,$state, $rootScope, $scope, FlashService, RegistrationService, CityService, StateService , RoleService, $stateParams, CurrentProfileService, ManageProfileServices) {
        
        $scope.RegModel = {};      
        var RegData = $scope.RegModel;
        $scope.loading = false;

        if ($stateParams.UserId) {
           
            var info = { "Id": $stateParams.UserId };
            var CurrentUser = ManageProfileServices.GetUserByUserId(info);
            CurrentUser.then(function (data) {
                $scope.CurrentUser = data.data[0];
                console.log($scope.CurrentUser, '$scope.CurrentUser in state');
            });
        }
        if (!$stateParams.UserId) {
            $scope.CurrentUser = CurrentProfileService.GetCurrentProfile();
            console.log($scope.CurrentUser, '$scope.CurrentUser');
        }
       
       
        $scope.InsertOrgAndUser = function (data) {
           // console.log($rootScope.selectedcity.CityId, 'CITY', $rootScope.selectedstate.StateId, 'STATE', $rootScope.selectedcity.CityName, 'CITYname', $rootScope.selectedstate.StateName, 'STATEname');

            $scope.loading = true;
            if ($rootScope.selectedcity)
            {
                data.UserCityId = $rootScope.selectedcity.CityId;
                data.UserCity = $rootScope.selectedcity.CityName;
            }
            if ($rootScope.selectedstate)
            {
                data.UserStateId = $rootScope.selectedstate.StateId;
                data.UserState = $rootScope.selectedstate.StateName;
            }
            if ($rootScope.selectedorgcity)
            {
                data.OrgCityId = $rootScope.selectedorgcity.CityId;
                data.OrgCity = $rootScope.selectedorgcity.CityName;
            }
            if ($rootScope.selectedorgstate)
            {
                data.OrgStateId = $rootScope.selectedorgstate.StateId;
                data.OrgState = $rootScope.selectedorgstate.StateName;
            }
            if (!$scope.CurrentUser)
            { alert(); data.RoleId = 2; }
            data.IsActive = "true";
            data.User_IsActive = "true";
            data.User_IsDelete = "False";
            data.IsDelete = "False";
            if($stateParams.UserId)
            {
                           
                data.UserId = $stateParams.UserId;
                data.CreatedBy = $scope.CurrentUser.UserId;
                data.OrgId = $scope.CurrentUser.OrgId;
            }
            if ($scope.CurrentUser && !$stateParams.UserId)
            {
                data.OrgId = $scope.CurrentUser.OrgId;
                data.UserId = $scope.CurrentUser.UserId;
            }
            console.log(data, 'ForRegisterOrUpdate');
            $scope.InsertedUserData = data;
            RegistrationService.InsertOrgAndUser(data).success(function (data) {
                 
                if (data.Response == "1") {
                    swal('Good Job...', "User profile saved successfully!", 'success');
                    console.log('$scope.InsertedUserData', $scope.InsertedUserData);
                    if ($scope.CurrentUser && !$stateParams.UserId)
                    {
                        $scope.CurrentUser = CurrentProfileService.SetUpdatedProfile($scope.InsertedUserData);
                        $location.path("/App");
                    }                   
                    else if ($stateParams.UserId)
                    {                        
                        $state.go('App.ManageUsers', { searchparam: $stateParams.param });
                        //$location.path("/App.ManageUsers/").search({ searchparam: $stateParams.param });
                    }
                    else if (!$scope.CurrentUser)
                    { $location.path("/Login"); }
                }
                else {
                    swal('Oops...', data.Message, 'error');                    
                }
             
                $scope.loading = false;
            }).error(function (data) {
             
                $scope.loading = false;
            }).finally(function (data) {
              
                $scope.loading = false;
            })
        }

        $scope.CreateUser=function(data)
        {
            data.CreatedByRoleId = $scope.CurrentUser.RoleId;
            data.CreatedBy = $scope.CurrentUser.UserId;
            data.OrgId = $scope.CurrentUser.OrgId;
            data.IsActive = "true";
            data.User_IsActive = "true";
            data.User_IsDelete = "False";
            data.IsDelete = "False";
            if ($rootScope.selectedcity) {
                data.UserCityId = $rootScope.selectedcity.CityId;
                data.UserCity = $rootScope.selectedcity.CityName;
            }
            if ($rootScope.selectedstate) {
                data.UserStateId = $rootScope.selectedstate.StateId;
                data.UserState = $rootScope.selectedstate.StateName;
            }
            if ($rootScope.selectedRole) {
                data.RoleId = $rootScope.selectedRole.RoleId;
                data.RoleName = $rootScope.selectedRole.RoleName;
            }
            if ($stateParams.UserId) {
                
                data.UserId = $stateParams.UserId;
                data.CreatedBy = $scope.CurrentUser.UserId;
               
            }
            
            console.log(data, 'ForAddUser');
            RegistrationService.InsertOrgAndUser(data).success(function (data) {

                if (data.Response == "1") {
                    swal('Good Job...', "User profile saved successfully!", 'success');
                }
                else {
                    swal('Oops...', data.Message, 'error');
                }

                $scope.loading = false;
            }).error(function (data) {

                $scope.loading = false;
            }).finally(function (data) {

                $scope.loading = false;
            })
        }

        $scope.updateCities = function (typed) {
          
            var data = { "CityName": typed };
            $scope.newCity = CityService.AutoCompleteCity(data);
            $scope.newCity.then(function (data) {               
                $scope.cities = data.data;    
            });
        }

        $scope.updateStates = function (typed) {

            var data = { "StateName": typed };
            $scope.newState = StateService.AutoCompleteState(data);
            $scope.newState.then(function (data) {                
                $scope.States = data.data;
                
            });
        }
     
        $scope.updateUserRoles = function (typed) {
           
            var data = { "Id": $scope.CurrentUser.OrgId, "RoleName": typed };            
            $scope.newRole = RoleService.GetRoleByOrgId(data);
            $scope.newRole.then(function (data) {
                $scope.Roles = data.data;
               
            });
        }

    }

})();