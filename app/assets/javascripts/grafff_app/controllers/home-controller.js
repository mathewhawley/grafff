app.controller('HomeController', function($scope, $http, UserService){

  UserService.getAllUsers().then(function(response) {
    console.log(response.data);
    $scope.allUsers = response.data;

  });

});