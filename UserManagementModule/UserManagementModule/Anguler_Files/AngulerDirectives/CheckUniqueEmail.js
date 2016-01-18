
App.directive('uniqueEmail', function ($http , GetURL_Services, ManageProfileServices, CurrentProfileService) {
    return {
        restrict: 'A',
        require: 'ngModel',
        link: function (scope, element, attrs, ngModel) {
            element.bind('blur', function (e) {
               var CurrentUser = CurrentProfileService.GetCurrentProfile();
                var OrgId = 0;
                if ( CurrentUser)
                    OrgId =  CurrentUser.OrgId;
                var data = {
                    "EmailId": element.val(), "OrgId": OrgId
                }
                var custUrl = GetURL_Services.api_Url();
                $http({
                    method: "Post",
                    url: custUrl + '/api/Organization/CheckUniqueEmailAddress/',
                    data: JSON.stringify(data)
                }).success(function (data) {

                    if (data.Response == 1) {
                        ngModel.$setValidity('isDuplicatedEmail', true);
                        //alert(data.Response + 'true');
                    } else {
                        ngModel.$setValidity('isDuplicatedEmail', false);

                        if (CurrentUser) {
                            console.log(data.Message, 'data.Message');
                            if (data.Message == "User with this Email Address already exists in your Organization.")
                                swal('Oops...', data.Message, 'error');
                            else if (data.Message == "User with this Email Address already exists in other organization. \n Please select different Email.")
                                swal('Oops...', data.Message, 'error');
                            else if (data.Message == "User with this Email Address already exists.\n Do you want to reactive that user?") {
                            //alert(data.Response + 'false');
                            swal({
                                title: 'User with this Email Address already exists.',
                                text: data.Message,
                                type: 'warning',
                                showCancelButton: true,
                                confirmButtonColor: '#3085d6',
                                cancelButtonColor: '#d33',
                                confirmButtonText: 'Yes, I do!',
                                cancelButtonText: 'No, cancel it!',
                                confirmButtonClass: 'confirm-class',
                                cancelButtonClass: 'cancel-class',
                                closeOnConfirm: false,
                                closeOnCancel: false
                            },
       function (isConfirm) {
           if (isConfirm) {
               var data = { "EmailId": element.val(), "OrgId": OrgId }
               ManageProfileServices.ReactiveUser(data).success(function (data) {
                   if (data.Response == 1) {
                       swal('Reactivated!', 'User Profile has been Reactivated!', 'success');
                       //$scope.UserList.splice(index, 1);
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
                            else if(data.Message=="User with this Email Address already exists in other organization. \n To reactive that user,Please send request to SuperAdmin.")
                            {
                                swal({
                                    title: 'User with this Email Address already exists.',
                                    text: data.Message,
                                    type: 'warning',
                                    showCancelButton: true,
                                    confirmButtonColor: '#3085d6',
                                    cancelButtonColor: '#d33',
                                    confirmButtonText: 'Yes, I do!',
                                    cancelButtonText: 'No, cancel it!',
                                    confirmButtonClass: 'confirm-class',
                                    cancelButtonClass: 'cancel-class',
                                    closeOnConfirm: false,
                                    closeOnCancel: false
                                },
      function (isConfirm) {
          if (isConfirm) {
              var data = { "EmailId": element.val(), "OrgId": OrgId }
              ManageProfileServices.SendRequestToReactiveUser(data).success(function (data) {
                  if (data.Response == 1) {
                      swal('Reactivated!', 'User Profile has been Reactivated!', 'success');
                     // $scope.UserList.splice(index, 1);
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
                    }

                });

            });
        }
    };
})


