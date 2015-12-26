angular.module('fashionApp').controller('shopsCtrl', function($scope, $api, $stateParams, $timeout) {
    var waitTimeForApplyingFilter = 1000;//in milliseconds
    var consolidatedFilters = {};
    $scope.selectedCategories = [];
    $scope.selectedBrands = [];
    $scope.selectedAreas = [];
    $scope.namesOfAllSelectedAreas = [];
    if($stateParams.areaId){
        $scope.selectedAreas[0] = parseInt($stateParams.areaId, 10);
    }
    if($stateParams.areaName){
        $scope.namesOfAllSelectedAreas[0] = $stateParams.areaName;
    }
    var formConsolidatedFilters = function () {
        consolidatedFilters = {
            areas: JSON.stringify($scope.selectedAreas),
            brands: JSON.stringify($scope.selectedBrands),
            categories: JSON.stringify($scope.selectedCategories)
        };
    };
    var shopsApi = new $api('shops/shops.json');
    var updateShopList = function () {
        angular.element('#shopListLoader').show();
        angular.element('body').scrollTop(0);
        angular.element('body').css('overflow', 'hidden');
        $timeout(function(){//Need to remove this timer. Done just to check loader
        formConsolidatedFilters();
        shopsApi.list(consolidatedFilters).then(function(response) {
            $scope.shops = response.data.shops;
            angular.element('#shopListLoader').hide();
            angular.element('body').css('overflow', 'auto');
        });
        }, 1000);
    };
    updateShopList();

    var areaFilter = new $api('shops/filters/areas.json');
    areaFilter.list().then(function(response) {
        $scope.areaFilter = response.data.areas;
    });
    var categoryFilter = new $api('shops/filters/category.json');
    categoryFilter.list().then(function(response) {
        $scope.categoryFilter = response.data.category;
    });
    var brandFilter = new $api('shops/filters/brands.json');
    brandFilter.list().then(function(response) {
        $scope.brandFilter = response.data.brands;
    });

    var filterUpdateTimer = null;
    $scope.selectOrDeselectFilter = function(scopeVariableName, id, areaName) {
        if(filterUpdateTimer){
            $timeout.cancel(filterUpdateTimer);
            filterUpdateTimer = null;
        }
        if ($scope[scopeVariableName].indexOf(id) > -1) {
            var indexOfElementToSlice = $scope[scopeVariableName].indexOf(id);
            $scope[scopeVariableName] = $scope[scopeVariableName].slice(0, indexOfElementToSlice).concat($scope[scopeVariableName].slice(indexOfElementToSlice + 1));
            if(areaName){
                var indexOfAreaNameElementToSlice = $scope.namesOfAllSelectedAreas.indexOf(areaName);
                $scope.namesOfAllSelectedAreas = $scope.namesOfAllSelectedAreas.slice(0, indexOfAreaNameElementToSlice).concat($scope.namesOfAllSelectedAreas.slice(indexOfAreaNameElementToSlice + 1));
            }
        } else {
            $scope[scopeVariableName].push(id);
            if(areaName){
                $scope.namesOfAllSelectedAreas.push(areaName);
            }
        }
        filterUpdateTimer = $timeout(function () {
            updateShopList();
            filterUpdateTimer = null;
        }, waitTimeForApplyingFilter);
    };
});