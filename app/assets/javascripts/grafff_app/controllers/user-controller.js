app.controller('UserController', function($scope, $http, UserService){

  UserService.getCurrentUser().then(function(response) {
    console.log(response.data);
    $scope.currentUser = response.data;
  });

});