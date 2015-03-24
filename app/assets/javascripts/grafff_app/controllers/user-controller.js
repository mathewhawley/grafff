app.controller('UserController', function($scope, $http, $routeParams, UserService){

  UserService.getAllUsers().then(function(response) {
    
    $scope.allUsers = response.data;
    
    angular.forEach($scope.allUsers, function(value, key) {
      if(value.id == $routeParams.id) {
        $scope.user = value;
      } 
    });

  });

  UserService.getCurrentUser().then(function(response) {
    
    $scope.currentUser = response.data;
    
    $scope.currentUserArtworks = [];
    angular.forEach($scope.currentUser.artworks, function(value, key) {
      $scope.currentUserArtworks.push(value);
    });

  });

});