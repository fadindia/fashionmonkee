'use strict';

/**
 * @ngdoc overview
 * @name yapp
 * @description
 * # yapp
 *
 * Main module of the application.
 */
angular
  .module('yapp', [
    'ui.router',
    'ngAnimate',
    'angularFileUpload',
    'ui.bootstrap',
    'ui.select2',
    'ng-bootstrap-datepicker',
    'satellizer'
  ])
  .config(function($stateProvider, $urlRouterProvider) {

    $urlRouterProvider.when('/dashboard', '/dashboard/info-list');
    $urlRouterProvider.otherwise('/login');

    $stateProvider
      .state('base', {
        abstract: true,
        url: '',
        templateUrl: 'fm_admin/src/views/base.html'
      })
        .state('login', {
          url: '/login',
          parent: 'base',
          templateUrl: 'fm_admin/src/views/login.html',
          controller: 'LoginCtrl'
        })
        .state('dashboard', {
          url: '/dashboard',
          parent: 'base',
          templateUrl: 'fm_admin/src/views/dashboard.html',
          controller: 'DashboardCtrl'
        })
          .state('info-list', {
            url: '/info-list',
            parent: 'dashboard',
            templateUrl: 'fm_admin/src/views/dashboard/info-list.html',
            controller: 'listCtrl',
            resolve: {
              item: function() {
              return 'stores';
            }
          }
          })
           .state('info-edit', {
            url: '/info-edit/{id}',
            parent: 'dashboard',
            templateUrl: 'fm_admin/src/views/dashboard/info-edit.html',
            controller: 'detailCtrl',
            resolve: {
              itemModel: function(getdata,$stateParams) {
              var get = new getdata();
                return get.findById('storeGet.json',$stateParams.id);
            },
              item: function() {
                return 'stores';
            }
          }            
          })           
          .state('categories', {
            url: '/categories',
            parent: 'dashboard',
            templateUrl: 'fm_admin/src/views/dashboard/categories.html',
            controller:'categoryCtrl',
            resolve: {
              itemModel: function(getdata) {
              var list = new getdata();
                return list.find('categories.json');
            },
              item: function() {
                return 'categories';
            }
          }
          })
           .state('catalogue-list', {
            url: '/catalogue-list',
            parent: 'dashboard',
            templateUrl: 'fm_admin/src/views/dashboard/catalogue-list.html',
            controller: 'listCtrl',
            resolve: {
              item: function() {
              return 'catalogue';
            }
          }
          })
          .state('catalogue-edit', {
            url: '/catalogue-edit/{id}',
            parent: 'dashboard',
            templateUrl: 'fm_admin/src/views/dashboard/catalogue-edit.html',
            controller:'detailCtrl',
            resolve: {
              itemModel: function(getdata,$stateParams) {
              var get = new getdata();
                return get.findById('catalogueGet.json',$stateParams.id);
            },
              item: function() {
                return 'catalogue';
            }
          }            
          })
           .state('offers-list', {
            url: '/offers-list',
            parent: 'dashboard',
            templateUrl: 'fm_admin/src/views/dashboard/offers-list.html',
            controller: 'listCtrl',
            resolve: {
              item: function() {
              return 'offers';
            }
          }
          })
           .state('offers-edit', {
            url: '/offers-edit/{id}',
            parent: 'dashboard',
            templateUrl: 'fm_admin/src/views/dashboard/offers-edit.html',
            controller: 'detailCtrl',
            resolve: {
              itemModel: function(getdata,$stateParams) {
                var get = new getdata('offers');
                return get.findById('offerGet.json',$stateParams.id);
            },
              item: function() {
                return 'offers';
            }
          }            
          });

  });
