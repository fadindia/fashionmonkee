angular.module('fashionApp').controller('categoryCtrl',function($scope,$api){
	
  var mensApi=new $api('categories/category.json');
        mensApi.list().then(function(response) {         
          $scope.mens=response.data.category;
        });

});

