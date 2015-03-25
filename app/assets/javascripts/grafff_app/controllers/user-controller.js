app.controller('UserController', function($scope, $http, $routeParams, UserService){

  UserService.getAllUsers().then(function(response) {
    // Store all user data in '$scope.allUsers'
    $scope.allUsers = response.data;
    // Get the user that matches the id in params
    angular.forEach($scope.allUsers, function(value, key) {
      if(value.id == $routeParams.id) {
        $scope.user = value;
      } 
    });
  });

  UserService.getCurrentUser().then(function(response) {
    // Store current user data in '$scope.currentUser'
    $scope.currentUser = response.data;
    $scope.currentUserArtworks = [];
    angular.forEach($scope.currentUser.artworks, function(value, key) {
      $scope.currentUserArtworks.push(value);
    });
  });

});