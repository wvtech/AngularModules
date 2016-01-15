App.service('RoleService', function ($http, GetURL_Services) {

    var custUrl = GetURL_Services.api_Url();
    this.GetRoleByOrgId = function (data) {

        var request = $http({
            method: "Post",
            url: custUrl + 'api/Organization/GetRoleByOrgId',
            data: data
        })
        return request;
    }

    this.GetUsersByOrgIdAndRoleId = function (data) {

        var request = $http({
            method: "Post",
            url: custUrl + 'api/User/GetUsersByOrgIdAndRoleId',
            data: data
        })
        return request;
    }

})