'use strict';
angular.module('yapp').factory('getdata', ['$api',
  function(API) {
    var getdata = function(endpoint) {
      this.findById = function(api,id) {
      	if(id === 'new'){
      		return 'new';
      	}else{
      		return new API(api).get(id);
      	}
        
      };


    };
    return getdata;
  }
]);