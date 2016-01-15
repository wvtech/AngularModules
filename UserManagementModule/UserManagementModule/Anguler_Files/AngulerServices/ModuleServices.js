App.service('ModuleServices', function ($http, GetURL_Services) {

    var custUrl = GetURL_Services.api_Url();
    this.GetAllModuleListByOrgId = function (data) {

        var request = $http({
            method: "Post",
            url: custUrl + '/api/User/GetAllModuleListByOrgId',
            data: data
        })
        return request;

    }
})