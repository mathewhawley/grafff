app.controller('ArtworkIndexController', [
  '$scope',
  '$http',
  'ArtworkFactory',
  function(
    $scope,
    $http,
    ArtworkFactory) {

  ArtworkFactory.getAllArtworks().then(function(response) {
    $scope.allArtworks = response.data;
  });

}]);