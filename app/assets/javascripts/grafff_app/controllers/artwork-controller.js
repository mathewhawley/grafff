app.controller('ArtworkController', function($scope, $http, UserFactory, ArtworkFactory, $routeParams) {

  ArtworkFactory.getAllArtworks().then(function(response) {

    // Store all user data in '$scope.allArtworks'
    $scope.allArtworks = response.data;

    // Get artwork from params
    function getArtworkFromParams(allArtworks, routeParams) {
      for(var i = 0; i < allArtworks.length; i++) {
        if(allArtworks[i].id === JSON.parse(routeParams.id)) {
          var artwork = allArtworks[i];
        };
      };
      return artwork;
    }
    $scope.artwork = getArtworkFromParams($scope.allArtworks, $routeParams);
    console.log($scope.artwork);


    // Artwork Show Page
    
    // Get all of an artwork's comments
    // Get all users who commented
    // Get artist
    

  });

});