App.service('RegistrationService', function ($http, GetURL_Services) {

    var custUrl = GetURL_Services.api_Url();
   
   
    this.InsertOrgAndUser = function (model) {
      
            var request = $http({
                method: 'Post',
               // url: 'http://localhost:51156/api/Organization/InsertOrgAndUser',
                url: custUrl+'/api/Organization/InsertOrgAndUser',
                data:model
            });
            return request;

    }
     
})