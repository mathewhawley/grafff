app.controller('ArtworkShowController', ['$scope', '$http', '$routeParams', 'UserFactory', 'ArtworkFactory', 'CommentFactory', function($scope, $http, $routeParams, UserFactory, ArtworkFactory, CommentFactory) {

  // Get artwork object from params to render on show template
  ArtworkFactory.getThisArtwork($routeParams).then(function(response) {
    $scope.artwork = response.data;
  });

  // Get all comments for this artwork
  CommentFactory.getThisArtworkComments($routeParams).then(function(response) {
    $scope.artworkComments = response.data;
  });

}]);