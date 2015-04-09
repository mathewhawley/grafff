app.controller('NavigationController', ['$scope', '$http', '$location', '$route', function($scope, $http, $location, $route){

  $scope.searchUsers = function() {    
    $location.path('/search');
    $route.reload();
  };

}]);