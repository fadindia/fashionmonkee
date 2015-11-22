angular.module('fashionApp').controller('shopsCtrl',function($scope,$api){
	 var shopsApi=new $api('shops/shops.json');
        shopsApi.list().then(function(response) {
          $scope.shops=response.data.shops;
        });

      var areaFilter=new $api('shops/filters/areas.json');
        areaFilter.list().then(function(response) {
          $scope.areaFilter=response.data.areas;
        });
         var categoryFilter=new $api('shops/filters/category.json');
        categoryFilter.list().then(function(response) {
          $scope.categoryFilter=response.data.category;
        });
         var brandFilter=new $api('shops/filters/brands.json');
        brandFilter.list().then(function(response) {
          $scope.brandFilter=response.data.brands;
        });



});

