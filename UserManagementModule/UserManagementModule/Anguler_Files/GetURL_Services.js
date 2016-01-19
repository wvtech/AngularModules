App.service('GetURL_Services', function ($http) {

    this.api_Url = function () {
         
  //    var custurl = "http://192.168.0.22:6542/";
        var custurl = "http://localhost:51156/";
        
        return custurl;
    }

})