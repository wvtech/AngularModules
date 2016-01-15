App.service('ManageProfileServices', function ($http, GetURL_Services) {

    var custUrl = GetURL_Services.api_Url();
    this.GetUsersByOrgId = function (model) {

        var request = $http({
            method: 'Post',            
            url: custUrl + '/api/Organization/GetUsersByOrgId',
            data: model
        });
        return request;
    }

    this.DeleteUserInfo=function(model)
    {
        var request = $http({
            method: 'Post',
            url: custUrl + '/api/Organization/DeleteUserInfo',
            data: model
        });
        return request;
    }
    
    this.GetUserByUserId = function (model) {
        var request = $http({
            method: 'Post',
            url: custUrl + '/api/User/GetUserByUserId',
            data: model
        });
        return request;
    }

    this.ReactiveUser = function (model) {
        var request = $http({
            method: 'Post',
            url: custUrl + '/api/User/ReactiveUser',
            data: model
        });
        return request;
    }

    this.ActiveUser = function (model) {
        var request = $http({
            method: 'Post',
            url: custUrl + '/api/User/ActiveUser',
            data: model
        });
        return request;
    }

    this.InActiveUser = function (model) {
        var request = $http({
            method: 'Post',
            url: custUrl + '/api/User/InActiveUser',
            data: model
        });
        return request;
    }

    this.SendRequestToReactiveUser = function (model) {
        var request = $http({
            method: 'Post',
            url: custUrl + '/api/User/SendRequestToReactiveUser',
            data: model
        });
        return request;
    }

})