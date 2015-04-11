app.controller('SearchController', ['$scope','$http', 'SearchFactory', function($scope, $http, SearchFactory) {

  // Find users from database and render on page
  function performSearch() {
    var searchField = document.getElementById('search-input');

    if(searchField.value !== '') {
      var searchTerm = {};
      searchTerm['query'] = searchField.value;

      // Search database
      SearchFactory.searchUsers(searchTerm).then(function(response) {
        // Update results on the view
        $scope.searchResults = response.data;
        // Reset input field
        searchField.blur();
        searchField.value = '';
      });
    }
  }
  performSearch();

}]);