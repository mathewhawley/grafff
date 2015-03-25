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
    // console.log($scope.user.id);
    // User's 'likes'
    $scope.userLikes = $scope.user.likes;

    // Loop through likes, store ID in $scope.artworkIdArray
    $scope.artworkIdArray = [];
    angular.forEach($scope.userLikes, function(value, key) {
      $scope.artworkIdArray.push(value.artwork_id);
    });

  });


  UserFactory.getCurrentUser().then(function(response) {

    // Store current user data in '$scope.currentUser'
    $scope.currentUser = response.data;

  });


  ArtworkFactory.getAllArtworks().then(function(response) {

    $scope.allArtworks = response.data;

    function isLiked(artwork, artworkIdArray) {
      for(var i = 0; i < artworkIdArray.length; i++) {
        if(artwork.id === artworkIdArray[i]) {
          return true;
        }
      }
    }

    function returnLikedArt(artworkIdArray, allArtworks) {
      likedArt = [];
      for(var i = 0; i < allArtworks.length; i++) {
        if(isLiked(allArtworks[i], artworkIdArray)) {
          likedArt.push(allArtworks[i]);
        }
      }
        return likedArt;
    }

    $scope.userLikedArtwork = returnLikedArt($scope.artworkIdArray, $scope.allArtworks);

    console.log($scope.userLikedArtwork);

  });

});