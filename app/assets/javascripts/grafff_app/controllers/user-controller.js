app.controller('UserController', function($scope, $http, $routeParams, UserFactory){

  UserFactory.getAllUsers().then(function(response) {

    // Store all user data in '$scope.allUsers'
    $scope.allUsers = response.data;
    console.log($scope.allUsers);

    // Get the user that matches the id in params
    angular.forEach($scope.allUsers, function(value, key) {
      if(value.id == $routeParams.id) {
        $scope.user = value;
      };
    });

    // User's 'likes'
    $scope.userLikes = $scope.user.likes;
  });

  UserFactory.getCurrentUser().then(function(response) {

    // Store current user data in '$scope.currentUser'
    $scope.currentUser = response.data;

    // Store current user's associated artworks in '$scope.currentUserArtworks'
    $scope.currentUserArtworks = [];
    angular.forEach($scope.currentUser.artworks, function(value, key) {
      $scope.currentUserArtworks.push(value);
    });
    
  });

});