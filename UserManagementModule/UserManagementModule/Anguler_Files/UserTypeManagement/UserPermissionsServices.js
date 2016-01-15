App.service('UserPermissionsServices', function ($http, GetURL_Services) {

    var custUrl = GetURL_Services.api_Url();

    this.GetPermissionsByUserRoleOrUserId = function (model) {

        var request = $http({
            method: 'Post',
            url: custUrl + '/api/User/GetPermissionsByUserRoleOrUserId',
            data: model
        });
        return request;
    }

    //this.GetPermissionsByUserRoleOrUserId = function (model) {

    //    var request = $http({
    //        method: 'Post',
    //        url: custUrl + '/api/User/InsertUserPermissions',
    //        data: model
    //    });
    //    return request;
    //}

    this.InsertUserPermissions = function (model) {

        var request = $http({
            method: 'Post',
            url: custUrl + '/api/User/InsertUserPermissions',
            data: model
        });
        return request;
    }
})
