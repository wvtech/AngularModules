App.service('LoginService', function ($http, GetURL_Services) {

     var custUrl = GetURL_Services.api_Url();

    this.Login_User = function (data) {       
      
        var request = $http({
            method: "Post",
            url: custUrl + 'api/Organization/GetUserInfoByUserNamePassword',
            data:data
        })
        return request;
    }
    
    //this.GetAgreementTypeList_Sp = function (Org_Id) {

    //    var request = $http({
    //        method: 'Get',
    //        url: custurl + '/api/BAA/GetAgreementTypeList_Sp?Org_Id=' + Org_Id
    //    });
    //    return request;

    //}

})