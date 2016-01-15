app.service('GetPermissionsService', function ($http, GetURL_Services) {
    var custUrl = GetURL_Services.api_Url();

    this.DashBoardAccessibility = function (data) {

        var request = $http({
            method: "Post",
            url: custUrl + "/api/User/DashBoardAccessibility",
            data:data

        });
        return request;

    }

    this.GetModuleAccessPermissions = function (data) {
        var request = $http({
            method: "Post",
            url: custUrl + "/api/User/GetModuleAccessPermissions" ,
            data: data
        });
        return request;
    }
    
});