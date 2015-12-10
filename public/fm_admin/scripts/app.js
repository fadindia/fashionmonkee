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
    'angularFileUpload'
  ])
  .config(function($stateProvider, $urlRouterProvider) {

    $urlRouterProvider.when('/dashboard', '/dashboard/info-list');
    $urlRouterProvider.otherwise('/login');

    $stateProvider
      .state('base', {
        abstract: true,
        url: '',
        templateUrl: 'fm_admin/views/base.html'
      })
        .state('login', {
          url: '/login',
          parent: 'base',
          templateUrl: 'fm_admin/views/login.html',
          controller: 'LoginCtrl'
        })
        .state('dashboard', {
          url: '/dashboard',
          parent: 'base',
          templateUrl: 'fm_admin/views/dashboard.html',
          controller: 'DashboardCtrl'
        })
          .state('info-list', {
            url: '/info-list',
            parent: 'dashboard',
            templateUrl: 'fm_admin/views/dashboard/info-list.html'
          })
           .state('info-edit', {
            url: '/info-edit/{storeId}',
            parent: 'dashboard',
            templateUrl: 'fm_admin/views/dashboard/info-edit.html'
          })
          .state('categories', {
            url: '/categories',
            parent: 'dashboard',
            templateUrl: 'fm_admin/views/dashboard/categories.html'
          })
           .state('catalogue', {
            url: '/catalogue',
            parent: 'dashboard',
            templateUrl: 'fm_admin/views/dashboard/catalogue.html'
          })
           .state('offers', {
            url: '/offers',
            parent: 'dashboard',
            templateUrl: 'fm_admin/views/dashboard/offers.html'
          })
           .state('blog', {
            url: '/blog',
            parent: 'dashboard',
            templateUrl: 'fm_admin/views/dashboard/blogs.html'
          });

  });
