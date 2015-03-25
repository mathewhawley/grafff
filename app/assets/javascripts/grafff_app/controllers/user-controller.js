app.controller('UserController', function($scope, $http, $routeParams, UserFactory, ArtworkFactory){

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
    // Loop through and get id of each 'like'
    console.log($scope.userLikes);
  });

  UserFactory.getCurrentUser().then(function(response) {

    // Store current user data in '$scope.currentUser'
    $scope.currentUser = response.data;

  });

  ArtworkFactory.getAllArtworks().then(function(response) {
    console.log(response.data);
  });

});