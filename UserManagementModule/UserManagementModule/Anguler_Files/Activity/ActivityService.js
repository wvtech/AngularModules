App.service('ActivityService', function ($http, GetURL_Services) {
    var custUrl = GetURL_Services.api_Url();

    this.InsertUpdateActivity = function (model) {

        var request = $http({
            method: 'Post',
            url: 'http://localhost:51156/api/Activity/InsertUpdateActivity',
            //  url: custUrl + '/api/Activity/InsertUpdateActivity',
            data: model
        });
        return request;
    }

    this.DeleteActivity = function (model) {

        var request = $http({
            method: 'Post',
            url: 'http://localhost:51156/api/Activity/DeleteActivity',
            //  url: custUrl + '/api/Activity/DeleteActivity',
            data: model
        });
        return request;
    }
})