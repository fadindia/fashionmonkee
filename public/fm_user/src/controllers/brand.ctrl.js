angular.module('fashionApp').controller('brandCtrl',function($scope,$api){
	
  var brands=new $api('brands/brands.json');
        brands.list().then(function(response) {         
          $scope.brands=response.data.brands;
        });

});

