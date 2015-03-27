app.controller('SearchController', function($scope, $http, UserFactory) {

  console.log('I am the Search Controller');

  $scope.testFunction = function() {
    console.log('working');
    console.log($scope.query);
  };

});