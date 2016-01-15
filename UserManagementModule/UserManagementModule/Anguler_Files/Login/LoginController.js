(function () {
    'use strict';

    App.controller('Login', Login);

    Login.$inject = ['$rootScope', '$scope', 'LoginService', 'localStorageService', '$state', '$location', 'CurrentProfileService'];
    function Login($rootScope, $scope, LoginService, localStorageService, $state, $location, CurrentProfileService) {
      
        var vm = this;
        $scope.data = {};
        $scope.email = "";
        $scope.password = "";

        $scope.login = function (submit) {
          
            $scope.data.UserName = $scope.email;
            $scope.data.Password = $scope.password;
          
                var promisePost = LoginService.Login_User($scope.data);
                promisePost.then(function (result) {
                    console.log(result.data);
                    var data = result.data;
                    if (data == "") {console.log(data,'UserDATA')
                        swal('Oops...', 'User with this email address does not exist!', 'error');
                    }
                    else {
                        CurrentProfileService.SetCurrentProfile(result.data);
                      
                        $location.path("/App");

                    }
                }, function (err) {

            });
        }

       
      
    }

})();