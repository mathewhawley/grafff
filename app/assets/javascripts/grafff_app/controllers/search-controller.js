app.controller('SearchController', ['$scope','$http', 'SearchFactory', function($scope, $http, SearchFactory) {

  $scope.ifResults = true;

  // Find users from database and render on page
  function performSearch() {
    var searchField = document.getElementById('search-input');

    if(searchField.value !== '') {
      var searchTerm = {};
      searchTerm['query'] = searchField.value;

      // Search database
      SearchFactory.searchUsers(searchTerm).then(function(response) {

        // Check the response, if no response display 'no results' message to viewer, otherwise display results on the view.
        if(response.data.length === 0) {
          console.log('no results!');
          $scope.ifResults = true;
        } else {
          $scope.searchResults = response.data;
          $scope.ifResults = false;
        }

        // Reset input field
        searchField.blur();
        searchField.value = '';
      });
    } else {
      $scope.ifResults = true;
    }
  }
  performSearch();

}]);