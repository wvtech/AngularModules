App.service('CityService', function ($http, GetURL_Services) {

    var custUrl = GetURL_Services.api_Url();
    this.AutoCompleteCity = function (data) {

        var request = $http({
            method: "Post",
            url: custUrl + '/api/Organization/AutoCompleteCity',
            data: data
        })
        return request;

    }
}) 