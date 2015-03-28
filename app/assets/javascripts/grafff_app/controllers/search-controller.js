app.controller('SearchController', function($scope, $http, UserFactory) {

  console.log('I am the Search Controller');

  UserFactory.getAllUsers().then(function(response) {

    function searchUsers(query) {
      console.log('Searching for a match...');
    }

    $scope.searchUsers = function() {
      console.log(response.data);
      console.log($scope.query);
      // Loop through all users
      // If any part of username, first_name or last_name matches the query, console.log them thangs!
      searchUsers($scope.query);
    };

  });

});