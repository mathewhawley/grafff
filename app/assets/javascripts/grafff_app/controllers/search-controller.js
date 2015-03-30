app.controller('SearchController', ['$scope','$http', '$location', 'UserFactory', 'SearchService', function($scope, $http, $location, UserFactory, SearchService) {

  UserFactory.getCurrentUser().then(function(response) {
    $scope.currentUser = response.data;
  });

  $scope.searchResults = SearchService.getResults();

}]);