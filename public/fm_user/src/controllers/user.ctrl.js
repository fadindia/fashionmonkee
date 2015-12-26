angular.module('fashionApp').controller('userCtrl',function($scope,$api){
    $scope.currentTab='bookmarks';
    $scope.setTabContent=function(value){
    	$scope.currentTab=value;
    };
     var user=new $api('user/users.json');
        user.list().then(function(response) {         
          $scope.user=response.data.user;
        });
  
});

