app.controller('HomeController', ['$scope', '$http', '$routeParams', '$location', '$route', 'UserFactory', 'ArtworkFactory', function($scope, $http, $routeParams, $location, $route, UserFactory, ArtworkFactory){

  UserFactory.getAllUsers().then(function(response) {
    $scope.allUsers = response.data;
  });

  UserFactory.getCurrentUser().then(function(response) {
    $scope.currentUser = response.data;
  });

  ArtworkFactory.getAllArtworks().then(function(response) {
    $scope.allArtworks = response.data;
  });

  $scope.searchUsers = function() {    
    $location.path('/search');
    $route.reload();
  };

}]);