App.directive('uniqueUsername', function ($http, GetURL_Services) {
    return {
        restrict: 'A',
        require: 'ngModel',
        link: function (scope, element, attrs, ngModel) {
            element.bind('blur', function (e) {
                 
                var data = {
                    "UserName": element.val()
                }
                var custUrl = GetURL_Services.api_Url();
                $http({
                    method: "Post",
                    url: custUrl+'/api/Organization/CheckUniqueUserName/',
                    data: JSON.stringify(data)
                }).success(function (data) {
                    alert(data.Response + '' + 'ResponseUniqueUsername');
                    if (data.Response == 1) {
                        ngModel.$setValidity('isDuplicateUsername', true);
                        //alert(data.Response + 'true');
                    } else {
                        ngModel.$setValidity('isDuplicateUsername', false);
                      //  alert(data.Response + 'false');
                    }

                });

            });
        }
    };
})
