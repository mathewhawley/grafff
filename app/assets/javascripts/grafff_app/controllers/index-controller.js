app.controller('IndexController', ['$scope', '$http', 'UserFactory', 'ArtworkFactory', function($scope, $http, UserFactory, ArtworkFactory){

  // Get all artists
  UserFactory.getPopularArtists().then(function(response) {
    $scope.popularArtists = response.data;
  });

  // Get all artworks for main map
  ArtworkFactory.getMainMapArtwork().then(function(response) {
    $scope.mapArtwork = response.data;
  });

  // Get latest 3 artworks
  ArtworkFactory.getLatestArtworks().then(function(response) {
    $scope.latestArtworks = response.data;
  });

}]);