app.controller('HomeController', ['$scope', '$http', '$location', '$route', 'UserFactory', 'ArtworkFactory', function($scope, $http, $location, $route, UserFactory, ArtworkFactory){

  UserFactory.getAllUsers().then(function(response) {
    $scope.allUsers = response.data;
    // Get all artists
    function getArtists(users) {
      var artists = [];
      for(var i = 0; i < users.length; i++) {
        if(users[i].is_artist === true) {
          artists.push(users[i]);
        }
      }
      return artists;
    }
    $scope.artists = getArtists($scope.allUsers);

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