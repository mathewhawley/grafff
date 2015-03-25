app.controller('UserController', function($scope, $http, $routeParams, UserFactory, ArtworkFactory){


  UserFactory.getAllUsers().then(function(response) {

    // Store all user data in '$scope.allUsers'
    $scope.allUsers = response.data;

    // Get the user that matches the id in params
    angular.forEach($scope.allUsers, function(value, key) {
      if(value.id == $routeParams.id) {
        $scope.user = value;
      };
    });

    // User's 'likes'
    $scope.userLikes = $scope.user.likes;

    // Loop through likes, store ID in array
    $scope.artworkIdArray = [];
    angular.forEach($scope.userLikes, function(value, key) {
      $scope.artworkIdArray.push(value.id);
    });

  });


  UserFactory.getCurrentUser().then(function(response) {

    // Store current user data in '$scope.currentUser'
    $scope.currentUser = response.data;

  });


  ArtworkFactory.getAllArtworks().then(function(response) {
    console.log(response.data);
    console.log($scope.artworkIdArray);
  });

});