app.controller('NavigationController', ['$scope', '$http', '$location', '$route', 'UserFactory', 'ArtworkFactory', function($scope, $http, $location, $route, UserFactory, ArtworkFactory){

  UserFactory.getCurrentUser().then(function(response) {
    $scope.currentUser = response.data;
  });

  $scope.searchUsers = function() {    
    $location.path('/search');
    $route.reload();
  };

}]);