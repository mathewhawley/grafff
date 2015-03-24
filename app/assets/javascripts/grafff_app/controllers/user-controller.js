app.controller('UserController', function($scope, $http, $routeProvider, UserService){

  UserService.getCurrentUser().then(function(response) {
    
    $scope.currentUser = response.data;
    $scope.user = $scope.currentUser[params[$routeParams.id]];
    
    $scope.currentUserArtworks = [];
    angular.forEach($scope.currentUser.artworks, function(value, key) {
      $scope.currentUserArtworks.push(value);
    });

  });

});
