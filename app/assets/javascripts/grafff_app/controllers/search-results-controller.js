app.controller('SearchResultsController', ['$scope', '$http', 'UserFactory', 'SearchService', function($scope, $http, UserFactory, SearchService) {

  console.log('I am the search results controller');

  UserFactory.getCurrentUser().then(function(response) {
    $scope.currentUser = response.data;
  });

  UserFactory.getAllUsers().then(function(response) {

    $scope.allUsers = response.data;

    var query = document.getElementById('search-query').value;
    console.log(query);
    console.log($scope.allUsers);
    // SearchService.searchUsers($scope.allUsers, query);

    // $scope.searchResults = SearchService.getResults();
    // console.log($scope.searchResults);

  })

}]);