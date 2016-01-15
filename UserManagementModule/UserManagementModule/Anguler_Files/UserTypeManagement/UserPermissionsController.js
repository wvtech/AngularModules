(function () {
    'use strict';


    App.controller('UserPermissions', ManagePermissions);

    ManagePermissions.$inject = ['$location', '$rootScope', '$scope', 'FlashService', 'RoleService', '$stateParams', 'CurrentProfileService', 'UserPermissionsServices', 'ModuleServices'];
    function ManagePermissions($location, $rootScope, $scope, FlashService, RoleService, $stateParams, CurrentProfileService, UserPermissionsServices, ModuleServices) {

        $scope.AllModules = {}; $scope.All = {}; $scope.ADD = {}; $scope.EDIT = {}; $scope.DELETE = {}; $scope.VIEW = {}; $scope.REACTIVE = {}; $scope.PRINT = {}; $scope.FINALIZE = {};
        $scope.CurrentUser = CurrentProfileService.GetCurrentProfile();
        $scope.Modules = {};
        $scope.SelectAll = false;
        $scope.SelectAllAdd = false;
        $scope.SelectAllEdit = false;
        $scope.SelectAllDelete = false;
        $scope.SelectAllView = false;
        $scope.SelectAllReactivate = false;
        $scope.SelectAllPrint = false;
        $scope.SelectAllFinalize = false;

        $scope.GetRoles = false;

        $scope.GetRoleByOrgId = function () {

            var Org_Id = $scope.CurrentUser.OrgId;
            var data = { "Id": Org_Id, "RoleName": "" };
            $scope.newRole = RoleService.GetRoleByOrgId(data);
            $scope.newRole.then(function (data) {
                for (var i = 0; i < data.data.length; i++) {
                    if (data.data[i].CreatedByOrg_Id != 58) {
                        $scope.OrganizationRoles = true;
                    }
                }
                $scope.Roles = data.data;
            });
        }

        $scope.GetRoleByOrgId();

        GetAllModuleListByOrgId();
        function GetAllModuleListByOrgId() {
            var data = { "Id": $scope.CurrentUser.OrgId };
            var responce = ModuleServices.GetAllModuleListByOrgId(data);
            responce.then(function (data) {

                $scope.Modules = data.data;
                console.log($scope.Modules, '$scope.Modules');
            }, function (error) {

            });

        }


        $scope.GetUsersByOrgIdAndRoleId = function () {

            var RoleId = 0; var OrgId = 0;
            if ($scope.roleid)
                //RoleId = $scope.roleid;
            { RoleId = $scope.roleid.RoleId; OrgId = $scope.roleid.CreatedByOrg_Id; }
            var data = { "RoleId": RoleId, "OrgId": OrgId }
            var responce = RoleService.GetUsersByOrgIdAndRoleId(data);
            responce.then(function (data) {
                $scope.GetRoles = true;
                $scope.UsersInRole = data.data;
                $scope.GetPermissionsByUserRoleOrUserId();
                console.log($scope.UsersInRole, '$scope.UsersInRole');
            }, function (error) {

            });

        }

        $scope.GetPermissionsByUserRoleOrUserId = function () {
            //alert('GetPermissionsByUserRoleOrUserId');
            var RoleId = 0;
            var UserId = 0;
            var OrgId = 0;
            if ($scope.roleid)
            { RoleId = $scope.roleid.RoleId; OrgId = $scope.roleid.CreatedByOrg_Id; }
            if ($scope.Users)
            { UserId = $scope.Users.UserId; OrgId = $scope.Users.OrgId }
            var data = { "OrgId": OrgId, "RoleId": RoleId, "UserId": UserId }
            var responce = UserPermissionsServices.GetPermissionsByUserRoleOrUserId(data);
            responce.then(function (data) {
                console.log(data.data, '$scope.Permissions');
                $scope.SelectAll = false;
                $scope.SelectAllAdd = false;
                $scope.SelectAllEdit = false;
                $scope.SelectAllDelete = false;
                $scope.SelectAllView = false;
                $scope.SelectAllReactivate = false;
                $scope.SelectAllPrint = false;
                $scope.SelectAllFinalize = false;

                for (var i = 0; i < $scope.Modules.length; i++) {
                    //   alert($scope.Modules[i].ModuleId + '$scope.Modules[i].ModuleId');
                    $scope.All[$scope.Modules[i].ModuleId] = false;
                    $scope.AllModules[$scope.Modules[i].ModuleId] = false;
                    $scope.ADD[$scope.Modules[i].ModuleId] = false;
                    $scope.VIEW[$scope.Modules[i].ModuleId] = false;
                    $scope.REACTIVE[$scope.Modules[i].ModuleId] = false;
                    $scope.DELETE[$scope.Modules[i].ModuleId] = false;
                    $scope.EDIT[$scope.Modules[i].ModuleId] = false;
                    $scope.PRINT[$scope.Modules[i].ModuleId] = false;
                    $scope.FINALIZE[$scope.Modules[i].ModuleId] = false;
                }

                $scope.Permissions = data.data;

                for (var j = 0; j < $scope.Permissions.length; j++) {

                    if ($scope.Permissions[j].ModuleId > 0) {

                        if ($scope.Permissions[j].All == true) {
                            //$scope.SelectAll = true;
                            //$scope.SelectAllAdd = true;
                            //$scope.SelectAllEdit = true;
                            //$scope.SelectAllDelete = true;
                            //$scope.SelectAllView = true;
                            //$scope.SelectAllReactivate = true;
                            //$scope.SelectAllPrint = true;
                            //$scope.SelectAllFinalize = true;

                            //   for (var i = 0; i < $scope.Modules.length; i++) {
                            //   alert($scope.Modules[i].ModuleId + '$scope.Modules[i].ModuleId');
                            $scope.All[$scope.Modules[j].ModuleId] = true;
                            $scope.AllModules[$scope.Modules[j].ModuleId] = true;
                            $scope.ADD[$scope.Modules[j].ModuleId] = true;
                            $scope.VIEW[$scope.Modules[j].ModuleId] = true;
                            $scope.REACTIVE[$scope.Modules[j].ModuleId] = true;
                            $scope.DELETE[$scope.Modules[j].ModuleId] = true;
                            $scope.EDIT[$scope.Modules[j].ModuleId] = true;
                            $scope.PRINT[$scope.Modules[j].ModuleId] = true;
                            $scope.FINALIZE[$scope.Modules[j].ModuleId] = true;
                            //  }
                        }

                        if ($scope.Permissions[j].Add == true) {
                            $scope.All[$scope.Modules[j].ModuleId] = true;
                            $scope.ADD[$scope.Modules[j].ModuleId] = true;
                        }
                        if ($scope.Permissions[j].Edit == true) {
                            $scope.EDIT[$scope.Modules[j].ModuleId] = true;
                            $scope.ADD[$scope.Modules[j].ModuleId] = true;
                        }
                        if ($scope.Permissions[j].Delete == true) {
                            $scope.All[$scope.Modules[j].ModuleId] = true;
                            $scope.DELETE[$scope.Modules[j].ModuleId] = true;
                        }
                        if ($scope.Permissions[j].View == true) {
                            $scope.All[$scope.Modules[j].ModuleId] = true;
                            $scope.VIEW[$scope.Modules[j].ModuleId] = true;
                        }
                        if ($scope.Permissions[j].ReActivate == true) {
                            $scope.All[$scope.Modules[j].ModuleId] = true;
                            $scope.REACTIVE[$scope.Modules[j].ModuleId] = true;
                        }
                        if ($scope.Permissions[j].Print == true) {
                            $scope.All[$scope.Modules[j].ModuleId] = true;
                            $scope.PRINT[$scope.Modules[j].ModuleId] = true;
                        }
                        if ($scope.Permissions[j].Finalize == true) {
                            $scope.All[$scope.Modules[j].ModuleId] = true;
                            $scope.FINALIZE[$scope.Modules[j].ModuleId] = true;
                        }

                    }
                }


            }, function (error) {

            });
        }

        $scope.SetAllAtEnd = function () {
            // alert('$scope.SetAllAtEnd');
            var c1 = 0, c2 = 0, c3 = 0, c4 = 0, c5 = 0, c6 = 0, c7 = 0, c8 = 0;

            for (var i = 0; i < $scope.Modules.length; i++) {
                if ($scope.AllModules[$scope.Modules[i].ModuleId]) { } else { c1++; }

                if ($scope.ADD[$scope.Modules[i].ModuleId]) { } else { c2++; }

                if ($scope.EDIT[$scope.Modules[i].ModuleId]) { } else { c3++; }

                if ($scope.DELETE[$scope.Modules[i].ModuleId]) { } else { c4++; }

                if ($scope.VIEW[$scope.Modules[i].ModuleId]) { } else { c5++; }

                if ($scope.REACTIVE[$scope.Modules[i].ModuleId]) { } else { c6++; }

                if ($scope.PRINT[$scope.Modules[i].ModuleId]) { } else { c7++; }

                if ($scope.FINALIZE[$scope.Modules[i].ModuleId]) { } else { c8++; }

            }
            if (c1 == 0) { }
            if (c2 == 0) { $scope.SelectAllAdd = true; }
            if (c3 == 0) { $scope.SelectAllEdit = true; }
            if (c4 == 0) { $scope.SelectAllDelete = true; }
            if (c5 == 0) { $scope.SelectAllView = true; }
            if (c6 == 0) { $scope.SelectAllReactivate = true; }
            if (c7 == 0) { $scope.SelectAllPrint = true; }
            if (c8 == 0) { $scope.SelectAllFinalize = true; }
            if ($scope.SelectAllAdd && $scope.SelectAllEdit && $scope.SelectAllDelete && $scope.SelectAllView && $scope.SelectAllReactivate && $scope.SelectAllPrint && $scope.SelectAllFinalize) { $scope.SelectAll = true; }

        }

        $scope.SetAllModulesAtEnd = function () {
            for (var i = 0; i < $scope.Modules.length; i++) {

                if ($scope.ADD[$scope.Modules[i].ModuleId] && $scope.EDIT[$scope.Modules[i].ModuleId] && $scope.DELETE[$scope.Modules[i].ModuleId] && $scope.VIEW[$scope.Modules[i].ModuleId] && $scope.REACTIVE[$scope.Modules[i].ModuleId] && $scope.PRINT[$scope.Modules[i].ModuleId] && $scope.PRINT[$scope.Modules[i].ModuleId])

                    $scope.AllModules[$scope.Modules[i].ModuleId] = true;
            }
            $scope.SetAllAtEnd();
        }

        $scope.SelectAllModules = function () {
            if ($scope.SelectAll) {

                $scope.SelectAllAdd = $scope.SelectAllEdit = $scope.SelectAllDelete = $scope.SelectAllView = $scope.SelectAllReactivate = $scope.SelectAllPrint = $scope.SelectAllFinalize = true;

                for (var i = 0; i < $scope.Modules.length; i++) {
                    // alert($scope.Modules[i].ModuleId + '$scope.Modules[i].ModuleId');
                    $scope.AllModules[$scope.Modules[i].ModuleId] = true;
                    $scope.All[$scope.Modules[i].ModuleId] = true;
                    $scope.ADD[$scope.Modules[i].ModuleId] = true;
                    $scope.EDIT[$scope.Modules[i].ModuleId] = true;
                    $scope.DELETE[$scope.Modules[i].ModuleId] = true;
                    $scope.VIEW[$scope.Modules[i].ModuleId] = true;
                    $scope.REACTIVE[$scope.Modules[i].ModuleId] = true;
                    $scope.PRINT[$scope.Modules[i].ModuleId] = true;
                    $scope.FINALIZE[$scope.Modules[i].ModuleId] = true;
                }

            }
            else {
                for (var i = 0; i < $scope.Modules.length; i++) {
                    // alert($scope.Modules[i].ModuleId + '$scope.Modules[i].ModuleId');
                    $scope.AllModules[$scope.Modules[i].ModuleId] = false;
                    $scope.All[$scope.Modules[i].ModuleId] = false;
                    $scope.ADD[$scope.Modules[i].ModuleId] = false;
                    $scope.EDIT[$scope.Modules[i].ModuleId] = false;
                    $scope.DELETE[$scope.Modules[i].ModuleId] = false;
                    $scope.VIEW[$scope.Modules[i].ModuleId] = false;
                    $scope.REACTIVE[$scope.Modules[i].ModuleId] = false;
                    $scope.PRINT[$scope.Modules[i].ModuleId] = false;
                    $scope.FINALIZE[$scope.Modules[i].ModuleId] = false;
                }
                $scope.SelectAllAdd = $scope.SelectAllEdit = $scope.SelectAllDelete = $scope.SelectAllView = $scope.SelectAllReactivate = $scope.SelectAllPrint = $scope.SelectAllFinalize = false;
            }
        }

        $scope.set_SelectAllPermission = function (PId) {
            //   alert($scope.All[PId] + '$scope.All[PId]');
            if ($scope.All[PId]) {
                $scope.AllModules[PId] = $scope.ADD[PId] = $scope.EDIT[PId] = $scope.DELETE[PId] = $scope.VIEW[PId] = $scope.REACTIVE[PId] = $scope.PRINT[PId] = $scope.FINALIZE[PId] = true;
                $scope.SetAllAtEnd();
            }
            else {
                $scope.SelectAll = $scope.AllModules[PId] = $scope.ADD[PId] = $scope.EDIT[PId] = $scope.DELETE[PId] = $scope.VIEW[PId] = $scope.REACTIVE[PId] = $scope.PRINT[PId] = $scope.FINALIZE[PId] = false;
                $scope.SelectAllAdd = $scope.SelectAllEdit = $scope.SelectAllDelete = $scope.SelectAllView = $scope.SelectAllReactivate = $scope.SelectAllPrint = $scope.SelectAllFinalize = false;
            }
        }

        $scope.set_SelectAllModulePermission = function (PId) {

            if ($scope.AllModules[PId]) {

                $scope.All[PId] = $scope.ADD[PId] = $scope.EDIT[PId] = $scope.DELETE[PId] = $scope.VIEW[PId] = $scope.REACTIVE[PId] = $scope.PRINT[PId] = $scope.FINALIZE[PId] = true;
                $scope.SetAllAtEnd();
            }
            else {
                $scope.SelectAll = $scope.All[PId] = $scope.ADD[PId] = $scope.EDIT[PId] = $scope.DELETE[PId] = $scope.VIEW[PId] = $scope.REACTIVE[PId] = $scope.PRINT[PId] = $scope.FINALIZE[PId] = false;
                $scope.SelectAllAdd = $scope.SelectAllEdit = $scope.SelectAllDelete = $scope.SelectAllView = $scope.SelectAllReactivate = $scope.SelectAllPrint = $scope.SelectAllFinalize = false;
            }
        }

        $scope.set_SelectAllAdd = function (PId) {
            //  alert($scope.ADD[PId] + '$scope.ADD[PId]');
            if ($scope.ADD[PId]) {
                $scope.All[PId] = true; $scope.VIEW[PId] = true;

                if ($scope.EDIT[PId] && $scope.DELETE[PId] && $scope.REACTIVE[PId] && $scope.PRINT[PId] && $scope.FINALIZE[PId]) {
                    $scope.AllModules[PId] = true;
                }
                $scope.SetAllAtEnd();

            }
            else {
                $scope.SelectAll = false; $scope.AllModules[PId] = false; $scope.SelectAllAdd = false;
                if (!$scope.VIEW[PId] && !$scope.EDIT[PId] && !$scope.DELETE[PId] && !$scope.REACTIVE[PId] && !$scope.PRINT[PId] && !$scope.FINALIZE[PId]) {
                    { $scope.All[PId] = false; }
                }
            }
        }

        $scope.set_SelectAllEdit = function (PId) {
            var count = 0;
            // alert($scope.EDIT[PId] + '$scope.EDIT[PId]');
            if ($scope.EDIT[PId]) {
                $scope.All[PId] = true; $scope.VIEW[PId] = true;

                if ($scope.ADD[PId] && $scope.DELETE[PId] && $scope.REACTIVE[PId] && $scope.PRINT[PId] && $scope.FINALIZE[PId]) {
                    $scope.AllModules[PId] = true;
                }
                $scope.SetAllAtEnd();

            }
            else {
                $scope.SelectAll = false; $scope.AllModules[PId] = false; $scope.SelectAllEdit = false;
                if (!$scope.VIEW[PId] && !$scope.ADD[PId] && !$scope.DELETE[PId] && !$scope.REACTIVE[PId] && !$scope.PRINT[PId] && !$scope.FINALIZE[PId]) {
                    { $scope.All[PId] = false; }
                }
            }
        }

        $scope.set_SelectAllDelete = function (PId) {
            //  alert($scope.DELETE[PId] + '$scope.DELETE[PId]');
            if ($scope.DELETE[PId]) {

                $scope.All[PId] = true; $scope.VIEW[PId] = true;

                if ($scope.ADD[PId] && $scope.EDIT[PId] && $scope.REACTIVE[PId] && $scope.PRINT[PId] && $scope.FINALIZE[PId]) {
                    $scope.AllModules[PId] = true;
                }
                $scope.SetAllAtEnd();

            }
            else {
                $scope.SelectAll = false; $scope.AllModules[PId] = false; $scope.SelectAllDelete = false;
                if (!$scope.VIEW[PId] && !$scope.ADD[PId] && !$scope.EDIT[PId] && !$scope.REACTIVE[PId] && !$scope.PRINT[PId] && !$scope.FINALIZE[PId]) {
                    $scope.All[PId] = false;
                }
            }
        }

        $scope.set_SelectAllReactive = function (PId) {
            // alert($scope.REACTIVE[PId] + '$scope.REACTIVE[PId]');
            if ($scope.REACTIVE[PId]) {

                $scope.All[PId] = true; $scope.VIEW[PId] = true;

                if ($scope.ADD[PId] && $scope.EDIT[PId] && $scope.DELETE[PId] && $scope.PRINT[PId] && $scope.FINALIZE[PId]) {
                    $scope.AllModules[PId] = true;
                }
                $scope.SetAllAtEnd();

            }
            else {
                $scope.SelectAll = false; $scope.AllModules[PId] = false; $scope.SelectAllReactivate = false;
                if (!$scope.VIEW[PId] && !$scope.ADD[PId] && !$scope.EDIT[PId] && !$scope.DELETE[PId] && !$scope.PRINT[PId] && !$scope.FINALIZE[PId]) {
                    $scope.All[PId] = false;
                }
            }
        }

        $scope.set_SelectAllPrint = function (PId) {
            //  alert($scope.PRINT[PId] + '$scope.PRINT[PId]');
            if ($scope.PRINT[PId]) {

                $scope.All[PId] = true; $scope.VIEW[PId] = true;

                if ($scope.ADD[PId] && $scope.EDIT[PId] && $scope.DELETE[PId] && $scope.REACTIVE[PId] && $scope.FINALIZE[PId]) {
                    $scope.AllModules[PId] = true;
                }
                $scope.SetAllAtEnd();

            }
            else {
                $scope.SelectAll = false; $scope.AllModules[PId] = false; $scope.SelectAllPrint = false;
                if (!$scope.VIEW[PId] && !$scope.ADD[PId] && !$scope.EDIT[PId] && !$scope.DELETE[PId] && !$scope.REACTIVE[PId] && !$scope.FINALIZE[PId]) {
                    $scope.All[PId] = false;
                }
            }
        }

        $scope.set_SelectAllFinalize = function (PId) {
            //alert($scope.FINALIZE[PId] + '$scope.FINALIZE[PId]');
            if ($scope.FINALIZE[PId]) {

                $scope.All[PId] = true; $scope.VIEW[PId] = true;

                if ($scope.ADD[PId] && $scope.EDIT[PId] && $scope.DELETE[PId] && $scope.REACTIVE[PId] && $scope.PRINT[PId]) {
                    $scope.AllModules[PId] = true;
                }
                $scope.SetAllAtEnd();
            }
            else {
                $scope.SelectAll = false; $scope.AllModules[PId] = false; $scope.SelectAllFinalize = false;
                if (!$scope.VIEW[PId] && !$scope.ADD[PId] && !$scope.EDIT[PId] && !$scope.DELETE[PId] && !$scope.REACTIVE[PId] && !$scope.PRINT[PId]) {
                    $scope.All[PId] = false;
                }
            }
        }

        $scope.set_SelectAllView = function (PId) {
            // alert($scope.VIEW[PId] + '$scope.VIEW[PId]');
            if ($scope.VIEW[PId]) {
                //  alert('T');
                $scope.All[PId] = true; $scope.VIEW[PId] = true;

                if ($scope.ADD[PId] && $scope.EDIT[PId] && $scope.DELETE[PId] && $scope.REACTIVE[PId] && $scope.PRINT[PId] && $scope.FINALIZE[PId]) {
                    $scope.AllModules[PId] = true;
                }
                $scope.SetAllAtEnd();
            }
            else {
                //  alert('F'); $scope.SelectAll = false;
                $scope.SelectAllView = false;
                $scope.AllModules[PId] = false;
                $scope.All[PId] = false;
                $scope.ADD[PId] = false;
                $scope.EDIT[PId] = false;
                $scope.DELETE[PId] = false;
                $scope.REACTIVE[PId] = false;
                $scope.PRINT[PId] = false;
                $scope.VIEW[PId] = false;
                $scope.FINALIZE[PId] = false;
            }
        }

        $scope.SelectAllModulesADD = function () {
            //   alert($scope.SelectAllAdd + 'SelectAllAdd');
            if ($scope.SelectAllAdd) {
                $scope.SelectAllView = true;
                for (var i = 0; i < $scope.Modules.length; i++) {
                    // alert($scope.Modules[i].ModuleId + '$scope.Modules[i].ModuleId');
                    $scope.All[$scope.Modules[i].ModuleId] = true;
                    $scope.ADD[$scope.Modules[i].ModuleId] = true;
                    $scope.VIEW[$scope.Modules[i].ModuleId] = true;
                }
                $scope.SetAllModulesAtEnd();
            }
            else {
                $scope.SelectAll = false;
                for (var i = 0; i < $scope.Modules.length; i++) {
                    //  alert($scope.Modules[i].ModuleId + '$scope.Modules[i].ModuleId');
                    $scope.ADD[$scope.Modules[i].ModuleId] = false;
                    $scope.AllModules[$scope.Modules[i].ModuleId] = false;
                    if (!$scope.VIEW[$scope.Modules[i].ModuleId] && !$scope.EDIT[$scope.Modules[i].ModuleId] && !$scope.DELETE[$scope.Modules[i].ModuleId] && !$scope.REACTIVE[$scope.Modules[i].ModuleId] && !$scope.PRINT[$scope.Modules[i].ModuleId] && !$scope.FINALIZE[$scope.Modules[i].ModuleId]) {
                        $scope.All[$scope.Modules[i].ModuleId] = false;
                    }
                }
            }
        }

        $scope.SelectAllModulesEdit = function () {
            if ($scope.SelectAllEdit) {
                $scope.SelectAllView = true;
                for (var i = 0; i < $scope.Modules.length; i++) {
                    //  alert($scope.Modules[i].ModuleId + '$scope.Modules[i].ModuleId');
                    $scope.All[$scope.Modules[i].ModuleId] = true;
                    $scope.EDIT[$scope.Modules[i].ModuleId] = true;
                    $scope.VIEW[$scope.Modules[i].ModuleId] = true;
                }
                $scope.SetAllModulesAtEnd();
            }
            else {
                $scope.SelectAll = false;
                for (var i = 0; i < $scope.Modules.length; i++) {
                    //  alert($scope.Modules[i].ModuleId + '$scope.Modules[i].ModuleId');
                    $scope.EDIT[$scope.Modules[i].ModuleId] = false;
                    $scope.AllModules[$scope.Modules[i].ModuleId] = false;
                    if (!$scope.VIEW[$scope.Modules[i].ModuleId] && !$scope.ADD[$scope.Modules[i].ModuleId] && !$scope.DELETE[$scope.Modules[i].ModuleId] && !$scope.REACTIVE[$scope.Modules[i].ModuleId] && !$scope.PRINT[$scope.Modules[i].ModuleId] && !$scope.FINALIZE[$scope.Modules[i].ModuleId]) {
                        $scope.All[$scope.Modules[i].ModuleId] = false;

                    }
                }
            }
        }

        $scope.SelectAllModulesDelete = function () {
            if ($scope.SelectAllDelete) {
                $scope.SelectAllView = true;
                for (var i = 0; i < $scope.Modules.length; i++) {
                    //  alert($scope.Modules[i].ModuleId + '$scope.Modules[i].ModuleId');
                    $scope.All[$scope.Modules[i].ModuleId] = true;
                    $scope.DELETE[$scope.Modules[i].ModuleId] = true;
                    $scope.VIEW[$scope.Modules[i].ModuleId] = true;
                }
                $scope.SetAllModulesAtEnd();
            }
            else {
                $scope.SelectAll = false;
                for (var i = 0; i < $scope.Modules.length; i++) {
                    //   alert($scope.Modules[i].ModuleId + '$scope.Modules[i].ModuleId');
                    $scope.DELETE[$scope.Modules[i].ModuleId] = false;
                    $scope.AllModules[$scope.Modules[i].ModuleId] = false;
                    if (!$scope.VIEW[$scope.Modules[i].ModuleId] && !$scope.ADD[$scope.Modules[i].ModuleId] && !$scope.EDIT[$scope.Modules[i].ModuleId] && !$scope.REACTIVE[$scope.Modules[i].ModuleId] && !$scope.PRINT[$scope.Modules[i].ModuleId] && !$scope.FINALIZE[$scope.Modules[i].ModuleId]) {
                        $scope.All[$scope.Modules[i].ModuleId] = false;

                    }
                }
            }
        }

        $scope.SelectAllModulesView = function () {
            if ($scope.SelectAllView) {
                for (var i = 0; i < $scope.Modules.length; i++) {
                    //  alert($scope.Modules[i].ModuleId + '$scope.Modules[i].ModuleId');
                    $scope.All[$scope.Modules[i].ModuleId] = true;
                    $scope.VIEW[$scope.Modules[i].ModuleId] = true;
                }
                $scope.SetAllModulesAtEnd();
            }
            else {
                $scope.SelectAll = false;
                $scope.SelectAllAdd = false;
                $scope.SelectAllEdit = false;
                $scope.SelectAllDelete = false;
                $scope.SelectAllView = false;
                $scope.SelectAllReactivate = false;
                $scope.SelectAllPrint = false;
                $scope.SelectAllFinalize = false;
                for (var i = 0; i < $scope.Modules.length; i++) {
                    //   alert($scope.Modules[i].ModuleId + '$scope.Modules[i].ModuleId');


                    $scope.All[$scope.Modules[i].ModuleId] = false;
                    $scope.AllModules[$scope.Modules[i].ModuleId] = false;
                    $scope.ADD[$scope.Modules[i].ModuleId] = false;
                    $scope.VIEW[$scope.Modules[i].ModuleId] = false;
                    $scope.REACTIVE[$scope.Modules[i].ModuleId] = false;
                    $scope.DELETE[$scope.Modules[i].ModuleId] = false;
                    $scope.EDIT[$scope.Modules[i].ModuleId] = false;
                    $scope.PRINT[$scope.Modules[i].ModuleId] = false;
                    $scope.FINALIZE[$scope.Modules[i].ModuleId] = false;
                }

            }
        }

        $scope.SelectAllModulesReactivate = function () {
            if ($scope.SelectAllReactivate) {
                $scope.SelectAllView = true;
                for (var i = 0; i < $scope.Modules.length; i++) {
                    //  alert($scope.Modules[i].ModuleId + '$scope.Modules[i].ModuleId');
                    $scope.All[$scope.Modules[i].ModuleId] = true;
                    $scope.REACTIVE[$scope.Modules[i].ModuleId] = true;
                    $scope.VIEW[$scope.Modules[i].ModuleId] = true;
                }
                $scope.SetAllModulesAtEnd();
            }
            else {
                $scope.SelectAll = false;
                for (var i = 0; i < $scope.Modules.length; i++) {
                    //   alert($scope.Modules[i].ModuleId + '$scope.Modules[i].ModuleId');
                    $scope.REACTIVE[$scope.Modules[i].ModuleId] = false;
                    $scope.AllModules[$scope.Modules[i].ModuleId] = false;
                    if (!$scope.VIEW[$scope.Modules[i].ModuleId] && !$scope.ADD[$scope.Modules[i].ModuleId] && !$scope.EDIT[$scope.Modules[i].ModuleId] && !$scope.DELETE[$scope.Modules[i].ModuleId] && !$scope.PRINT[$scope.Modules[i].ModuleId] && !$scope.FINALIZE[$scope.Modules[i].ModuleId]) {
                        $scope.All[$scope.Modules[i].ModuleId] = false;

                    }
                }
            }
        }

        $scope.SelectAllModulesPrint = function () {
            if ($scope.SelectAllPrint) {
                $scope.SelectAllView = true;
                for (var i = 0; i < $scope.Modules.length; i++) {
                    //  alert($scope.Modules[i].ModuleId + '$scope.Modules[i].ModuleId');
                    $scope.All[$scope.Modules[i].ModuleId] = true;
                    $scope.PRINT[$scope.Modules[i].ModuleId] = true;
                    $scope.VIEW[$scope.Modules[i].ModuleId] = true;
                }
                $scope.SetAllModulesAtEnd();
            }
            else {
                $scope.SelectAll = false;
                for (var i = 0; i < $scope.Modules.length; i++) {
                    //  alert($scope.Modules[i].ModuleId + '$scope.Modules[i].ModuleId');
                    $scope.PRINT[$scope.Modules[i].ModuleId] = false;
                    $scope.AllModules[$scope.Modules[i].ModuleId] = false;
                    if (!$scope.VIEW[$scope.Modules[i].ModuleId] && !$scope.ADD[$scope.Modules[i].ModuleId] && !$scope.EDIT[$scope.Modules[i].ModuleId] && !$scope.DELETE[$scope.Modules[i].ModuleId] && !$scope.REACTIVE[$scope.Modules[i].ModuleId] && !$scope.FINALIZE[$scope.Modules[i].ModuleId]) {
                        $scope.All[$scope.Modules[i].ModuleId] = false;

                    }
                }
            }
        }

        $scope.SelectAllModulesFinalize = function () {
            if ($scope.SelectAllFinalize) {
                $scope.SelectAllView = true;
                for (var i = 0; i < $scope.Modules.length; i++) {
                    //  alert($scope.Modules[i].ModuleId + '$scope.Modules[i].ModuleId');
                    $scope.All[$scope.Modules[i].ModuleId] = true;
                    $scope.FINALIZE[$scope.Modules[i].ModuleId] = true;
                    $scope.VIEW[$scope.Modules[i].ModuleId] = true;
                }
                $scope.SetAllModulesAtEnd();
            }
            else {
                $scope.SelectAll = false;
                for (var i = 0; i < $scope.Modules.length; i++) {
                    // alert($scope.Modules[i].ModuleId + '$scope.Modules[i].ModuleId');
                    $scope.FINALIZE[$scope.Modules[i].ModuleId] = false;
                    $scope.AllModules[$scope.Modules[i].ModuleId] = false;
                    if (!$scope.VIEW[$scope.Modules[i].ModuleId] && !$scope.ADD[$scope.Modules[i].ModuleId] && !$scope.EDIT[$scope.Modules[i].ModuleId] && !$scope.DELETE[$scope.Modules[i].ModuleId] && !$scope.REACTIVE[$scope.Modules[i].ModuleId] && !$scope.PRINT[$scope.Modules[i].ModuleId]) {
                        $scope.All[$scope.Modules[i].ModuleId] = false;

                    }
                }
            }
        }

        $scope.InsertUserPermissions = function () {
            var PermissionArray = [];
            var RoleId = 0; var UserId = 0; var OrgId = 0;
            if ($scope.roleid) {
                RoleId = $scope.roleid.RoleId;
                if ($scope.roleid.CreatedByOrg_Id != 58) { OrgId = $scope.roleid.CreatedByOrg_Id; }
                if ($scope.Users)
                { UserId = $scope.Users.UserId; OrgId = $scope.Users.OrgId }

                $scope.loading = true;
                for (var i = 0; i < $scope.Modules.length; i++) {
                    PermissionArray.push({
                        "Org_Id": OrgId, "U_RoleId": RoleId, "UserId": UserId, "ModuleId": $scope.Modules[i].ModuleId,
                        "All": $scope.AllModules[$scope.Modules[i].ModuleId], "Add": $scope.ADD[$scope.Modules[i].ModuleId], "Edit": $scope.EDIT[$scope.Modules[i].ModuleId],
                        "Delete": $scope.DELETE[$scope.Modules[i].ModuleId], "View": $scope.VIEW[$scope.Modules[i].ModuleId], "ReActivate": $scope.REACTIVE[$scope.Modules[i].ModuleId],
                        "Print": $scope.PRINT[$scope.Modules[i].ModuleId], "Finalize": $scope.FINALIZE[$scope.Modules[i].ModuleId], "ModifiedBy": $scope.CurrentUser.UserId
                    });
                    console.log(PermissionArray, 'PermissionArray');
                    UserPermissionsServices.InsertUserPermissions(PermissionArray).success(function (data) {

                        if (data.Response == 1) {
                            swal('Good Job...', "User Permissions saved successfully!", 'success');
                        }
                        else {
                            swal('Oops...', "Something went wrong.", 'error');
                        }

                        $scope.loading = false;
                    }).error(function (data) {

                        $scope.loading = false;
                    }).finally(function (data) {

                        $scope.loading = false;
                    })
                }
            }
            else {
                swal('Oops...', "You have not selected any UserType.\n Please select UserType first.", 'error');
            }
        }

    }
})();