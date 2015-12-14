'use strict';

angular.module('yapp').controller('listCtrl', function($scope,$api,item,$location) {
	var fields=[];
	var endPoint;
	var apiPoint;
	var listApi;

	$scope.goEdit=function(url,id){
        $location.path('/'+ url  + '/'+id)
    };

	$scope.stores=[{
		"id":1,
		"name":"Velachery"
	},{
		"id":2,
		"name":"Adyar"
	}];
	
		var getData=function(){
        	listApi.list().then(function(response) {
          		$scope.listData=response.data[endPoint];
          		$scope.currentPage = 1;
				$scope.totalItems = $scope.listData.length;
				$scope.itemsPerPage = 10; // items per page				
        	});

		};

		$scope.pageChanged=function(){
			alert($scope.currentPage);;
		};

		switch(item) {
			case 'stores':
				{
					fields=['name','type','area','status'];
					apiPoint='storeList.json';
					endPoint='stores';
					listApi=new $api(apiPoint);
					getData();
					break;		   
				}
				case 'catalogue':
				{
					fields=['name','category','status'];
					apiPoint='catalogueList.json';
					endPoint='catalogue';
					listApi=new $api(apiPoint);
					getData();
					break;		   
				}
				case 'offers':
				{
					fields=['name','expiryOn','value','status'];
					apiPoint='offerList.json';
					endPoint='offers';
					listApi=new $api(apiPoint);
					getData();
					break;		   
				}
		} 

		
		

});