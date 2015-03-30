app.controller('LikeController', ['$scope', '$http', 'UserFactory', 'LikeFactory', function($scope, $http, UserFactory, LikeFactory) {

  UserFactory.getCurrentUser().then(function(response) {

    // Store current user data in '$scope.currentUser'
    $scope.currentUser = response.data;

    // On page load – check if current user already likes artwork
    var currentUserLikes = $scope.currentUser.likes;
    var artworkId = $scope.artwork.id;

    function doesLike(array, id) {
      for(var i = 0; i < array.length; i++) {
        if(array[i].artwork_id === id) {
          $scope.likeThisArtwork = true;
        };
      };
    }
    doesLike(currentUserLikes, artworkId);

  });

  LikeFactory.getAllLikes().then(function(response) {

    // Function to like an artwork
    $scope.likeArtwork = function(userId, artworkId) {

      // Create 'like' object to send back to controller
      var like = {};
      like['user_id'] = userId;
      like['artwork_id'] = artworkId;

      LikeFactory.likeArtwork(like).then(function(response) {
        $scope.artwork.likes.push(response.data);
      });

      $scope.likeThisArtwork = true;

    };

    // Function to unlike an artwork
    $scope.unlikeArtwork = function(currentUserId) {

      // Get the like object belonging to the current user
      var like = _.where($scope.artwork.likes, { user_id: currentUserId});
      // Get the id of the like
      var likeId = like[0].id;

      // Delete 'like' from database
      LikeFactory.unlikeArtwork(likeId).then(function(response) {
        
        var unlikeArtwork = _.where($scope.artwork.likes, { id: likeId });
        
        var toDelete = unlikeArtwork[0].id;

        function removeLikeWithIndex(array, index) {
          array.splice(index, 1);
        }

        function deleteLike(array, id) {
          for(var i = 0; i < array.length; i++) {
            if(array[i].id == id) {
              removeLikeWithIndex(array, i);
            };
          };
        }
        deleteLike($scope.artwork.likes, toDelete);

      });

      $scope.likeThisArtwork = false;

    };

  });
  
}]);
