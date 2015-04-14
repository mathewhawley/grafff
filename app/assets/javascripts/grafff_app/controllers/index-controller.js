app.controller('IndexController', [
  '$scope',
  '$http',
  '$timeout',
  'UserFactory',
  'ArtworkFactory',
  function(
    $scope,
    $http,
    $timeout,
    UserFactory,
    ArtworkFactory
  ) {

  // Get all artists
  UserFactory.getPopularArtists()
  .then(function(response) {
    $scope.popularArtists = response.data;
  });

  // Get latest 3 artworks
  ArtworkFactory.getLatestArtworks()
  .then(function(response) {
    $scope.latestArtworks = response.data;
  });

}]);