'use strict';
angular.module('fashionApp').service('$api', function($http, $q) {
    var baseUrl = "fm_user/src/api/";
    var currentdate = new Date();
    var datetime = "Last Sync: " + currentdate.getDate() + "/" 
                    + (currentdate.getMonth() + 1) + "/" 
                    + currentdate.getFullYear() + " @ " 
                    + currentdate.getHours() + ":" 
                    + currentdate.getMinutes() + ":" 
                    + currentdate.getSeconds();
    var parseHttpParams = function(params) {
        if (!params) {
            params = {};
        }
        params.cache = false;
        params = {
            params: params
        };
        return params;
    };
    var $api = function(endPoint) {
        var _endpointUrl = baseUrl + endPoint;
        if (endPoint.indexOf('?') > -1) {
            _endpointUrl = _endpointUrl + '&datetime=' + datetime;
        } else {
            _endpointUrl = _endpointUrl + '?datetime=' + datetime;
        }
        this.list = function(params) {
            params = parseHttpParams(params);
            return $http.get(_endpointUrl, params);
        };
        this.get = function(id) {
            return $http.get(_endpointUrl + '/' + id, {
                cache: false
            });
        };
        this.save = function(object, id) {
            if (!!id) {
                return $http.put(_endpointUrl + '/' + id, object, {
                    cache: false
                });
            } else {
                return $http.post(_endpointUrl, object);
            }
        };
        this.updateEndPoint = function(endPoint) {
            var _endpointUrl = baseUrl + endPoint;
            if (endPoint.indexOf('?') > -1) {
                _endpointUrl = _endpointUrl + '&datetime=' + datetime;
            } else {
                _endpointUrl = _endpointUrl + '?datetime=' + datetime;
            }
        };
    };
    return $api;
}).factory('userInfo', function() {
    var currentlyLoggedInUser = {"id": null,
                                  "name": null,
                                  "profileImage": null
                                };
    var userInfo = {
        //Need to call this while log in
        setCurrentlyLoggedInUser: function(loggedInUser) {
            if (currentlyLoggedInUser.id === null) {
                currentlyLoggedInUser = loggedInUser;
            }
        },
        getCurrentlyLoggedInUser: function() {
            return currentlyLoggedInUser;
        },
        //N,ed to call this while log out
        clearCurrentlyLoggedInUser: function() {
            currentlyLoggedInUser = {"id": null,
                                      "name": null,
                                      "profileImage": null
                                    };
        }
    };

    return userInfo;
});