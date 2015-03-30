app.controller('SearchController', ['$scope','$http', 'UserFactory', function($scope, $http, UserFactory) {

  UserFactory.getAllUsers().then(function(response) {

    $scope.allUsers = response.data;

    $scope.searchUsers = function(query) {
      // console.log($scope.allUsers);
      
      // Loop through all users
      // If any part of username, first_name or last_name matches the query, console.log them thangs!
      function filterAllUsers(allUsers, query) {
        for(var i = 0; i< allUsers.length; i++) {
          if(allUsers[i].first_name.indexOf(query) >= 0) {
            console.log(allUsers[i]);
          }
          // console.log(allUsers[i].first_name);
          // console.log(query);
        };
      }

      filterAllUsers($scope.allUsers, query);
  
    };

  });

}]);