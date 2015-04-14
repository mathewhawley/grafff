app.controller('MainController', [
  '$scope',
  '$http',
  '$location',
  '$route',
  'UserFactory',
  function(
    $scope,
    $http,
    $location,
    $route,
    UserFactory) {

  // Get current user object
  UserFactory.getCurrentUser()
  .then(function(response) {
    $scope.currentUser = response.data;
  });

  $scope.searchUsers = function() {    
    $location.path('/search');
    $route.reload();
  };

  $scope.redirect = function() {
    $location.path('/users/sign_in/#');
  }

}]);