app.controller('UserController', function($scope, $http, UserService){

  UserService.getCurrentUser().then(function(response) {
    
    $scope.currentUser = response.data;
    $scope.currentUserArtworks = [];

    angular.forEach($scope.currentUser.artworks, function(key, value) {
      $scope.currentUserArtworks.push(key);
    })

  });

});
