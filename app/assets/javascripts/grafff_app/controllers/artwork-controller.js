app.controller('ArtworkController', function($scope, $http, UserFactory, ArtworkFactory) {

  ArtworkFactory.getAllArtworks().then(function(response) {

    $scope.allArtworks = response.data;


    // Get an array of artwork based on user's likes
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

    // Get artists (users) who made each artwork

    // Get all comments for each artwork

  });

});