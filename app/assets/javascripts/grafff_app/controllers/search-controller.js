app.controller('SearchController', ['$scope','$http', 'UserFactory', function($scope, $http, UserFactory) {

  UserFactory.getAllUsers().then(function(response) {

    $scope.allUsers = response.data;

    $scope.searchUsers = function(query) {
      
      // Loop through all users
      // If any part of username, first_name or last_name matches the query, console.log them thangs!
      function filterAllUsers(allUsers, query) {
        var searchResults = [];
        for(var i = 0; i< allUsers.length; i++) {
          if(allUsers[i].first_name.indexOf(query) >= 0 || allUsers[i].last_name.indexOf(query) >= 0 || allUsers[i].username.indexOf(query) >= 0) {
            searchResults.push(allUsers[i]);
          }
        };
        return searchResults;
      }

      $scope.searchResults = filterAllUsers($scope.allUsers, query);
  
    };

  });

}]);