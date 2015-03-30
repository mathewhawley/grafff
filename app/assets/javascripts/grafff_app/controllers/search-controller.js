app.controller('SearchController', ['$scope','$http', '$location', 'UserFactory', 'SearchService', function($scope, $http, $location, UserFactory, SearchService) {

  UserFactory.getCurrentUser().then(function(response) {
    $scope.currentUser = response.data;
  });

  UserFactory.getAllUsers().then(function(response) {

    var allUsers = response.data;
    var query = document.getElementById('search-input').value;
    
    function searchUsers(users, searchQuery) {
      SearchService.searchUsers(users, searchQuery);
      return results = SearchService.getResults();
    }
    $scope.searchResults = searchUsers(allUsers, query);

  });

}]);