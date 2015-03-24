app.controller('HomeController', function($scope, $http, $routeParams, UserService){

  UserService.getAllUsers().then(function(response) {
    $scope.allUsers = response.data;
  });

  UserService.getCurrentUser().then(function(response) {
    $scope.currentUser = response.data;
  });

});