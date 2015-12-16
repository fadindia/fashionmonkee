angular.module('fashionApp').controller('shopDetailCtrl',function($scope,$api,$timeout){
	var detailsApi=new $api('shop-detail/shop-detail.json');
	detailsApi.list().then(function(response) {
		/*alert(JSON.strinigfy(response.data.shopDetail));*/
		$scope.shopDetails=response.data.shopDetail;
	});
	
	$scope.setOfferDescription = function (offer, index) {
		var offerDescription = "Location: " + offer.locationName + "\n" +
				"Validity: " + offer.validFrom + " to " + offer.validTo + "\n" +
				"Detail: " + offer.description + "\n" +
				"Value: " + offer.offValue + "\n";
        $scope.shopDetails.offers[index].description = offerDescription;
	};

	$scope.ogGrids = {};
    $scope.doOgGridInitialization = function (index, length, elementId) {
        if(index !== length - 1){
            return;
        }
        if($scope.ogGrids[elementId] && $scope.ogGrids[elementId].isInitialized){
            return;
        }
        OgGrid.init(elementId);
        $scope.ogGrids[elementId] = {isInitialized: true};
    };
});

