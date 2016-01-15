(function () {
    'use strict';


    App.controller('ManageUsersController', ManageUsers);

    ManageUsers.$inject = ['$location', '$rootScope', '$scope', 'FlashService', 'ManageProfileServices', 'CityService', 'StateService', '$stateParams', 'CurrentProfileService', 'GetPermissionsService'];
    function ManageUsers($location, $rootScope, $scope, FlashService, ManageProfileServices, CityService, StateService, $stateParams, CurrentProfileService, GetPermissionsService) {

        $scope.CurrentUser = CurrentProfileService.GetCurrentProfile();

        $scope.access = {};
        if ($stateParams.searchparam) { $scope.query = $stateParams.searchparam }
        $scope.search = function (row) {
            return (angular.lowercase(row.UserFirstName).indexOf(angular.lowercase($scope.query) || '') !== -1 ||
                angular.lowercase(row.RoleName).indexOf(angular.lowercase($scope.query) || '') !== -1 ||
                  angular.lowercase(row.UserEmailId).indexOf(angular.lowercase($scope.query) || '') !== -1 ||
                    angular.lowercase(row.OrgName).indexOf(angular.lowercase($scope.query) || '') !== -1);
        };
        $scope.GetPermissionForModule = function () {
            var data = { "OrgId": $scope.CurrentUser.OrgId, "RoleId": $scope.CurrentUser.RoleId, "UserId": $scope.CurrentUser.UserId, "ModuleId": 1 };
            GetPermissionsService.GetModuleAccessPermissions(data).success(function (data) {

                if (data != "") {
                    $scope.access = data;
                    console.log($scope.access, '$scope.access on usermanagement');
                }
                else {
                }
            }).error(function (data) {

            }).finally(function (data) {
            })
        }

        $scope.GetPermissionForModule();

        var data = { "OrgId": $scope.CurrentUser.OrgId };
        $scope.GetUsersByOrgId = function () {
            ManageProfileServices.GetUsersByOrgId(data).success(function (data) {

                if (data != "") {
                    $scope.UserList = data;
                    console.log($scope.UserList, 'data');

                }
                else {
                    swal('Oops...', data.Message, 'error');
                }
            }).error(function (data) {

            }).finally(function (data) {
            })
        }
        $scope.GetUsersByOrgId();

        $scope.DeleteUserInfo = function (item, index) {

            swal({
                title: 'Are you sure?',
                text: 'You will not be able to recover this User!',
                type: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, delete it!',
                cancelButtonText: 'No, cancel it!',
                confirmButtonClass: 'confirm-class',
                cancelButtonClass: 'cancel-class',
                closeOnConfirm: false,
                closeOnCancel: false
            },
    function (isConfirm) {
        if (isConfirm) {
            var data = { UserId: item.UserId, ModifiedBy: $scope.CurrentUser.UserId }
            ManageProfileServices.DeleteUserInfo(data).success(function (data) {
                if (data.Response == 1) {
                    swal('Deleted!', 'User Profile has been deleted!', 'success');
                    $scope.UserList.splice(index, 1);

                }
                else {
                    swal('Oops...', data.Message, 'error');
                }

            }).error(function (data) {
                swal('Oops...', 'Something went wrong!', 'error');
            }).finally(function () {

            })

        } else {
            swal('Cancelled', 'User Profile is safe :)', 'error');
        }
    });
        }


        this.Edit = function (model) { 
            $location.path("/App");

        }

        $scope.InActiveUser = function (Id) {

            swal({
                title: 'Are you sure?',
                text: 'You want to InActive this User account!',
                type: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, InActive it!',
                cancelButtonText: 'No, cancel it!',
                confirmButtonClass: 'confirm-class',
                cancelButtonClass: 'cancel-class',
                closeOnConfirm: false,
                closeOnCancel: false
            },
    function (isConfirm) {
        if (isConfirm) {
            var data = { UserId : Id }
            ManageProfileServices.InActiveUser(data).success(function (data) {
                if (data.Response == 1) {
                    swal('InActivated!', 'User account has been InActivated!', 'success');
                    $scope.GetUsersByOrgId();
                }
                else {
                    swal('Oops...', data.Message, 'error');
                }

            }).error(function (data) {
                swal('Oops...', 'Something went wrong!', 'error');
            }).finally(function () {

            })

        } else {
            swal('Cancelled', ' ', 'error');
        }
    });
        }

        $scope.ActiveUser = function (Id) {

            swal({
                title: 'Are you sure?',
                text: 'You want to Active this User account!',
                type: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, Active it!',
                cancelButtonText: 'No, cancel it!',
                confirmButtonClass: 'confirm-class',
                cancelButtonClass: 'cancel-class',
                closeOnConfirm: false,
                closeOnCancel: false
            },
    function (isConfirm) {
        if (isConfirm) {
            var data = { UserId: Id }
            ManageProfileServices.ActiveUser(data).success(function (data) {
                if (data.Response == 1) {
                    swal('Activated!', 'User account has been Activated!', 'success');
                    $scope.GetUsersByOrgId();
                }
                else {
                    swal('Oops...', data.Message, 'error');
                }

            }).error(function (data) {
                swal('Oops...', 'Something went wrong!', 'error');
            }).finally(function () {

            })

        } else {
            swal('Cancelled', ' ', 'error');
        }
    });
        }
        
    }
})();
