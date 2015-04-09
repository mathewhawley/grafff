app.controller('ArtworkShowController', ['$scope', '$http', '$routeParams', 'UserFactory', 'ArtworkFactory', 'CommentFactory', function($scope, $http, $routeParams, UserFactory, ArtworkFactory, CommentFactory) {

  // Get artwork object from params to render on show template
  ArtworkFactory.getThisArtwork($routeParams).then(function(response) {
    $scope.artwork = response.data;
  });

  // Get all comments for this artwork
  CommentFactory.getThisArtworkComments($routeParams).then(function(response) {
    $scope.artworkComments = response.data;
  });

  // On submission of comment form, create new comment object to be sent to database
  $scope.postComment = function(commentContent, artworkId) {

    UserFactory.getCurrentUser().then(function(response) {
      var currentUser = response.data;

      var newComment = {};
      newComment['content'] = commentContent;
      newComment['user_id'] = currentUser.id;
      newComment['artwork_id'] = artworkId;

      // Post new comment to database
      CommentFactory.newComment(newComment).then(function(response) {
        // Update artwork comments on the view
        $scope.artworkComments.push(response.data);

        // Clear comment field and remove focus
        $scope.commentContent = '';
        var commentField = document.getElementById('comment-field');
        commentField.blur();
      });
    });
  };

}]);