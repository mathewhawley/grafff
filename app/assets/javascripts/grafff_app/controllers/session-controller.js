app.controller('SessionController', ['$scope', '$http', 'UserFactory', function($scope, $http, UserFactory){

  UserFactory.getCurrentUser().then(function(response) {
    $scope.currentUser = response.data;
  });

}]);