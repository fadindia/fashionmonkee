angular.module('fashionApp').controller('offerCtrl',function($scope,$api){
	
  var offers=new $api('offers/offers.json');
        offers.list().then(function(response) {         
          $scope.offers=response.data.offers;
        });

});

