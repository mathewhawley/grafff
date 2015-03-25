app.controller('ArtworkController', function($scope, $http, UserFactory, ArtworkFactory) {

  ArtworkFactory.getAllArtworks().then(function(response) {

    $scope.allArtworks = response.data;

    // Liked Artwork tiles
    
    // Get an array of artwork based on user's likes
    function isLiked(artwork, artworkIdArray) {
      for(var i = 0; i < artworkIdArray.length; i++) {
        if(artwork.id === artworkIdArray[i]) {
          return true;
        }
      }
    }

    function returnLikedArt(artworkIdArray, allArtworks) {
      var likedArt = [];
      for(var i = 0; i < allArtworks.length; i++) {
        if(isLiked(allArtworks[i], artworkIdArray)) {
          likedArt.push(allArtworks[i]);
        }
      }
      return likedArt;
    }

    $scope.userLikedArtwork = returnLikedArt($scope.artworkIdArray, $scope.allArtworks);

    // console.log($scope.userLikedArtwork);


    // Get an array of artists (users) who made each liked artwork
    function artworkArtist(user, artworkIdArray) {
      for(var i = 0; i < artworkIdArray.length; i++) {
        if(user.id === artworkIdArray[i]) {
          return true;
        }
      }
    }

    function likedArtworkArtists(artworkIdArray, allUsers) {
      var likedArtworkArtists = [];
      for(var i = 0; i < allUsers.length; i++) {
        if(artworkArtist(allUsers[i], artworkIdArray)) {
          likedArtworkArtists.push(allUsers[i]);
        }
      }
      return likedArtworkArtists;
    }

    $scope.likedArtworkArtists = likedArtworkArtists($scope.artworkIdArray, $scope.allUsers);

    // console.log($scope.likedArtworkArtists);


    // Artwork Show Page
    
    // Get all of an artwork's comments
    // Get all users who commented
    // Get artist
    

  });

});