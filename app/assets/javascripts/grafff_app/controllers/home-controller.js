app.controller('HomeController', ['$scope', '$http', '$routeParams', 'UserFactory', 'ArtworkFactory', function($scope, $http, $routeParams, UserFactory, ArtworkFactory){

  UserFactory.getAllUsers().then(function(response) {
    $scope.allUsers = response.data;
  });

  UserFactory.getCurrentUser().then(function(response) {
    $scope.currentUser = response.data;
  });

  ArtworkFactory.getAllArtworks().then(function(response) {
    $scope.allArtworks = response.data;
  });

}]);