'use strict';

/**
 * @ngdoc function
 * @name yapp.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of yapp
 */
angular.module('yapp')
  .controller('categoryCtrl', function($scope,item,itemModel) {

    $scope.stores=[{
		"id":1,
		"name":"Velachery"
	},{
		"id":2,
		"name":"Adyar"
	}];

	$scope.search={mens:'',womens:'',kids:''
	};

	$scope.model=itemModel.data[item];

  });
