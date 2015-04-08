app.controller('IndexController', ['$scope', '$http', 'UserFactory', 'ArtworkFactory', function($scope, $http, UserFactory, ArtworkFactory){

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

  // Get all artworks for main map
  ArtworkFactory.getAllArtworks().then(function(response) {
    $scope.allArtworks = response.data;
  });

  // Get latest 3 artworks
  ArtworkFactory.getLatestArtworks().then(function(response) {
    $scope.latestArtworks = response.data;
  });

}]);