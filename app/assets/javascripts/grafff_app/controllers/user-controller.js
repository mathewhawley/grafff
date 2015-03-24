app.controller('UserController', function($scope, $http, UserService){

  UserService.getCurrentUser().then(function(response) {
    $scope.currentUser = response.data;
  });

});