'use strict';

/**
 * @ngdoc function
 * @name yapp.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of yapp
 */
angular.module('yapp')
  .controller('LoginCtrl', function($scope, $location,$auth,$api) {
  	$scope.username='';
  	$scope.password='';

    $scope.submit = function() {
      $location.path('/dashboard');
    /*$auth.login($scope.username).then(function() {
         alert('You have successfully signed in!');
          $location.path('/dashboard');
        })
        .catch(function(error) {
          alert(error.data.message, error.status);
        });*/
     
    };

  });
