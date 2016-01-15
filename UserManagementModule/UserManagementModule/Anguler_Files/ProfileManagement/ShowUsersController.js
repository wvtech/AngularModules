(function () {
    'use strict';


    App.controller('ShowUsers', ShowUsers);

    ShowUsers.$inject = ['$location', '$rootScope', '$scope', 'FlashService', 'ManageProfileServices', 'CityService', 'StateService', '$stateParams'];
    function ShowUsers($location, $rootScope, $scope, FlashService, ManageProfileServices, CityService, StateService, $stateParams) {
        var vm = this;
        $scope.data = {};
        $scope.GetUserList = function () {
            ManageProfileServices.GetUserList().success(function (result) {
                if (result.Response == "1") {
                    
                }
                else {
                    $scope.UserList = result.data.data;
                    localStorageService.set('UserInfo', result.data.data);
                }
            }).error(function (data) {                
                console.log("error");
            }).finally(function (data) {
                
            })
        }


    }

})();