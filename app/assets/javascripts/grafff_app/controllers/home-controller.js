app.controller('HomeController', ['$scope', '$http', '$routeParams', '$location', 'UserFactory', 'ArtworkFactory', 'SearchFactory', function($scope, $http, $routeParams, $location, UserFactory, ArtworkFactory, SearchFactory){

  UserFactory.getAllUsers().then(function(response) {

    $scope.allUsers = response.data;
    $scope.searchResults = [];

    $scope.searchUsers = function(query) {
      $location.path('/search');
      SearchFactory.searchUsers(query).then(function(response) {
        console.log(response.data);
      });
    };

  });

  UserFactory.getCurrentUser().then(function(response) {
    $scope.currentUser = response.data;
  });

  ArtworkFactory.getAllArtworks().then(function(response) {
    $scope.allArtworks = response.data;
  });

}]);