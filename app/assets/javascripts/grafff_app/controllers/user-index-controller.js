app.controller('UserIndexController', ['$http', '$scope','UserFactory', function($http, $scope, UserFactory) {

  UserFactory.getAllArtists().then(function(response) {
    $scope.allArtists = response.data;
  });

}]);