app.controller('HomeController', function($scope, $http, $routeParams, UserFactory){

  UserFactory.getAllUsers().then(function(response) {
    $scope.allUsers = response.data;
  });

  UserFactory.getCurrentUser().then(function(response) {
    $scope.currentUser = response.data;
  });

});