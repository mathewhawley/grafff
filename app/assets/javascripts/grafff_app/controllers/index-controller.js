app.controller('IndexController', ['$scope', '$http', 'UserFactory', 'ArtworkFactory', function($scope, $http, UserFactory, ArtworkFactory){

  // Get all artists
  UserFactory.getArtists().then(function(response) {
    $scope.artists = response.data;
  });

  // Get all artworks for main map
  ArtworkFactory.getMainMapArtworks().then(function(response) {
    $scope.mainMapArtworks = response.data;
  });

  // Get latest 3 artworks
  ArtworkFactory.getLatestArtworks().then(function(response) {
    $scope.latestArtworks = response.data;
  });

}]);