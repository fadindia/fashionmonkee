angular.module('fashionApp').controller('userCtrl', function($scope, $api, $stateParams, userInfo, $q, $state) {
    var loginDetailsChecker = $q.defer();
    if(userInfo.getCurrentlyLoggedInUser().id === null){
        var loginDetails = new $api('user/loginDetails.json');
        loginDetails.list().then(function (response) {
            userInfo.setCurrentlyLoggedInUser(response.data);
            loginDetailsChecker.resolve() || loginDetailsChecker;
        });
    }else{
        loginDetailsChecker = loginDetailsChecker.resolve() || loginDetailsChecker;
    }
    loginDetailsChecker.promise.then(function () {
        $scope.currentTab = 'followers';
        $scope.searchingUser = '';
        $scope.idOfCurrentUser = parseInt($stateParams.userId || 0, 10);
        $scope.idOfCurrentlyLoggedInUser = parseInt(userInfo.getCurrentlyLoggedInUser().id || 0, 10);
        $scope.isProfileInEditMode = false;
        $scope.setTabContent = function(value) {
            $scope.currentTab = value;
        };
        var user = new $api('user/users.json?userId=' + $stateParams.userId);
        user.list().then(function(response) {
            $scope.user = response.data.user;
        });
        var allUsers = new $api('user/allUsers.json?name=contains:' + $scope.searchingUser);
        /*allUsers.list().then(function(response) {
            $scope.allUsers = response.data.user;
        });*/
        $scope.toggleProfileEditMode = function () {
            if(!$scope.isProfileInEditMode){
                $scope.profileEditModel = {"name": $scope.user.profile.name,
                                            "place": $scope.user.profile.place,
                                            "mobile": $scope.user.profile.mobile,
                                            "aboutYourself": $scope.user.profile.aboutYourself};
                $scope.isProfileInEditMode = true;
            }else{
                $scope.isProfileInEditMode = false;
            }
        };
        $scope.followThisUser = function () {
            //TODO;
        };
        $scope.goToUser = function (userId) {
            $state.go('user', {userId: userId});
        };
    });
});

