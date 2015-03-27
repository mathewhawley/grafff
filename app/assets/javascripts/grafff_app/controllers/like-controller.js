app.controller('LikeController', function($scope, $http, UserFactory, $routeParams) {

  UserFactory.getCurrentUser().then(function(response) {
    
    $scope.currentUser = response.data;

    $scope.likeArtwork = function() {
      console.log('button clicked');
    };
    // Create 'like' object to send back to controller

  });
  
});