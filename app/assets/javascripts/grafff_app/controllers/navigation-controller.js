app.controller('NavigationController', ['$scope', '$http', '$location', '$route', 'UserFactory', function($scope, $http, $location, $route, UserFactory){

  UserFactory.getCurrentUser().then(function(response) {
    $scope.currentUser = response.data;
  });

  $scope.searchUsers = function() {    
    $location.path('/search');
    $route.reload();
  };

}]);