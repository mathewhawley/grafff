app.controller('LikeController', function($scope, $http, UserFactory, $routeParams) {

  UserFactory.getCurrentUser().then(function(response) {
    
    $scope.currentUser = response.data;

    $scope.likeArtwork = function(userId, artworkId) {

      // Create 'like' object to send back to controller
      var like = {};
      like['user_id'] = userId;
      like['artwork_id'] = artworkId;

      console.log(like);
    };
    

  });
  
});