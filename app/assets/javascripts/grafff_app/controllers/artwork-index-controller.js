app.controller('ArtworkIndexController', ['$scope', '$http', 'UserFactory', 'ArtworkFactory', '$routeParams', function($scope, $http, UserFactory, ArtworkFactory, $routeParams) {

  ArtworkFactory.getAllArtworks().then(function(response) {

    // Store all user data in '$scope.allArtworks'
    $scope.allArtworks = response.data;

  });

}]);