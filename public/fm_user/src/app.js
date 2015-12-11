var fashionApp = angular.module('fashionApp', ["ui.router","siyfion.sfTypeahead","ui.bootstrap","ui.select2"])
    fashionApp.config(function($stateProvider){
    $stateProvider
        .state('home', {
            url: "",
            templateUrl: 'fm_user/src/views/home.tpl.html',
            controller:'homeCtrl'
        })
        .state('categories', {
            url: "/categories",
            templateUrl: 'fm_user/src/views/category-list.tpl.html',
            controller:'categoryCtrl'
        })
         .state('shops', {
            url: "/shops",
            templateUrl: 'fm_user/src/views/shop-list.tpl.html',
            controller:'shopsCtrl'
        })
         .state('brands', {
            url: "/brands",
            templateUrl: 'fm_user/src/views/brand-list.tpl.html',
            controller:'brandCtrl'
        })
         .state('shop-detail', {
            url: "/shop-detail/{shopId}",
            templateUrl: 'fm_user/src/views/shop-detail.tpl.html',
	        controller: "shopDetailCtrl"
        })
         .state('user', {
            url: "/user",
            templateUrl: 'fm_user/src/views/user.tpl.html',
            controller: 'userCtrl'
        })        
         .state('offers', {
            url: "/offers",
            templateUrl: 'fm_user/src/views/offer-list.tpl.html',
            controller:'offerCtrl'
        })
         .state('newShop', {
            url: "/newShop",
            templateUrl: 'fm_user/src/views/newShop.tpl.html',
            controller:'newShopCtrl'
        })

    });
