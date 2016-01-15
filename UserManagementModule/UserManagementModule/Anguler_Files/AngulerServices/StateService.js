App.service('StateService', function ($http, GetURL_Services) {

    var custUrl = GetURL_Services.api_Url();
    this.AutoCompleteState = function (data) {

        var request = $http({
            method: "Post",
            url: custUrl + '/api/Organization/AutoCompleteState',
            data: data
        })
        return request;

    }
})