angular.module('fashionApp').controller('homeCtrl',function($scope,$api,$state){

    var substringMatcher = function(strs) {
  return function findMatches(q, cb) {
    var matches, substringRegex;

    // an array that will be populated with substring matches
    matches = [];

    // regex used to determine if a string contains the substring `q`
    substrRegex = new RegExp(q, 'i');

    // iterate through the pool of strings and for any string that
    // contains the substring `q`, add it to the `matches` array
    $.each(strs, function(i, str) {
      if (substrRegex.test(str)) {
        matches.push(str);
      }
    });

    cb(matches);
  };
};

var areas = ['Alabama', 'Alaska', 'Arizona', 'Arkansas', 'California',
  'Colorado', 'Connecticut', 'Delaware', 'Florida', 'Georgia', 'Hawaii',
  'Idaho', 'Illinois', 'Indiana', 'Iowa', 'Kansas', 'Kentucky', 'Louisiana',
  'Maine', 'Maryland', 'Massachusetts', 'Michigan', 'Minnesota',
  'Mississippi', 'Missouri', 'Montana', 'Nebraska', 'Nevada', 'New Hampshire',
  'New Jersey', 'New Mexico', 'New York', 'North Carolina', 'North Dakota',
  'Ohio', 'Oklahoma', 'Oregon', 'Pennsylvania', 'Rhode Island',
  'South Carolina', 'South Dakota', 'Tennessee', 'Texas', 'Utah', 'Vermont',
  'Virginia', 'Washington', 'West Virginia', 'Wisconsin', 'Wyoming'
];

var cities=['Chennai','Bangalore'];

$('#search-area').typeahead({
  hint: true,
  highlight: true,
  minLength: 0
},
{
  name: 'areas',
  source: substringMatcher(areas)
});

$('#search-city').typeahead({
  hint: true,
  highlight: true,
  minLength: 0
},
{
  name: 'cities',
  source: substringMatcher(cities)
});

        
        var blogApi=new $api('home/blogs.json');
        blogApi.list().then(function(response) {
          $scope.blogs=response.data.blogs;
        });
        var areaApi=new $api('home/areas.json');
        areaApi.list().then(function(response) {
          $scope.areas=response.data.areas;
        });
        var twitteApi=new $api('home/twittes.json');
        twitteApi.list().then(function(response) {         
          $scope.slides=response.data.twittes;
        }); 
        var offerApi=new $api('home/collections/offers.json');
        offerApi.list().then(function(response) {         
          $scope.offers=response.data.offers;
        });
        var mensApi=new $api('home/collections/category.json');
        mensApi.list().then(function(response) {         
          $scope.mens=response.data.category;
        });
         var brands=new $api('home/collections/brands.json');
        brands.list().then(function(response) {         
          $scope.brands=response.data.brands;
        });       

        $scope.myInterval = 3000;

        $scope.currentTab='offer';
        $scope.switchTab=function(data){
          $scope.currentTab=data;
        };

        $scope.goToShopList = function (areaId, areaName) {
          $state.go('shops', { areaId: areaId, areaName: areaName });
        };
});

