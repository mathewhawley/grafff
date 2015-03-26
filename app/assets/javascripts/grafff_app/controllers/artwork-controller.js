app.controller('ArtworkController', function($scope, $http, UserFactory, ArtworkFactory) {

  ArtworkFactory.getAllArtworks().then(function(response) {

    $scope.allArtworks = response.data;

    // Artwork Show Page
    
    // Get all of an artwork's comments
    // Get all users who commented
    // Get artist
    

  });

});