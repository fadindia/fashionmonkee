'use strict';

angular.module('yapp').controller('detailCtrl', function($scope,$api,item,itemModel) {
	if(itemModel === 'new'){
		$scope.model={};
		$scope.oper='new';
	}else{
		$scope.model=itemModel.data[item];
		$scope.oper='edit';
	}
	
	
	$scope.save=function(){
		var saveApi=new $api(item);
		console.log($scope.model);
		/*saveApi.save($scope.model,$scope.model.id).then(function(response) {
		});*/
	};
	
});