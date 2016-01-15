App.service('CurrentProfileService', function (localStorageService) {

    this.GetCurrentProfile=function()
    {
        return localStorageService.get('CurrentProfile');
    }

    this.SetCurrentProfile=function(UserInfo)
    {
        console.log(UserInfo[0],'userinfo');
        return localStorageService.set('CurrentProfile', UserInfo[0]);
    }

    this.SetUpdatedProfile = function (UserInfo) {
        console.log(UserInfo, 'userinfo');
        return localStorageService.set('CurrentProfile', UserInfo);
    }

    this.logout = function ()
    {
        return localStorageService.set('CurrentProfile', null);
    }
})