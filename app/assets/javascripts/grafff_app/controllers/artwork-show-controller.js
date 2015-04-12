app.controller('ArtworkShowController', [
  '$scope',
  '$http',
  '$routeParams',
  'UserFactory',
  'ArtworkFactory',
  'CommentFactory',
  'LikeFactory',
  function(
    $scope,
    $http,
    $routeParams,
    UserFactory,
    ArtworkFactory,
    CommentFactory,
    LikeFactory) {

  // Function to check if current user already likes 'this' artwork – called on page load
  function checkForLike(userId, artworkId) {
    var like = {};
    like['user_id'] = userId;
    like['artwork_id'] = artworkId;

    LikeFactory.checkForLike(like)
    .then(function(response) {
      $scope.likeThisArtwork = response.data;
    });
  }

  // Get artwork object from params to render on show template
  ArtworkFactory.getThisArtwork($routeParams)
  .then(function(response) {
    $scope.artwork = response.data;

    // Once we have 'this' artwork, use it to check if the 'current user' already likes it and show the appropriate like/unlike button
    checkForLike($scope.currentUser.id, $scope.artwork.id);
  });

  // Get all comments for this artwork
  CommentFactory.getThisArtworkComments($routeParams)
  .then(function(response) {
    $scope.artworkComments = response.data;
  });

  // Get all likes for this artwork
  LikeFactory.getThisArtworkLikes($routeParams)
  .then(function(response) {
    $scope.artworkLikes = response.data;
  });

  // Create new comment – on submission of comment form, create new comment object to be sent to database
  $scope.postComment = function(commentContent, artworkId) {
    var newComment = {};
    newComment['content'] = commentContent;
    newComment['user_id'] = $scope.currentUser.id;
    newComment['artwork_id'] = artworkId;

    // Post new comment to database
    CommentFactory.newComment(newComment)
    .then(function(response) {
      // Update artwork comments on the view
      $scope.artworkComments.push(response.data);

      // Clear comment field and remove focus
      $scope.commentContent = '';
      var commentField = document.getElementById('comment-field');
      commentField.blur();
    });
  };

  // Like artwork – on 'like' button click
  $scope.likeArtwork = function() {
    var like = {};
    like['user_id'] = $scope.currentUser.id;
    like['artwork_id'] = $scope.artwork.id;

    // Post new like to database
    LikeFactory.likeThisArtwork(like)
    .then(function(response) {
      // Update artwork likes on the view
      $scope.artworkLikes.push(response.data);

      // Set variable to true – this will switch 'like' button to 'unlike'
      $scope.likeThisArtwork = true;
    });
  };

  // Unlike artwork – on 'unlike' button click
  $scope.unlikeArtwork = function() {
    var like = {};
    like['user_id'] = $scope.currentUser.id;
    like['artwork_id'] = $scope.artwork.id;

    // Post like to database
    LikeFactory.unlikeThisArtwork(like)
    .then(function(response) {
      // Update artwork likes on the view
      $scope.artworkLikes = response.data;

      // Set variable to false – this will switch 'unlike' button to 'like'
      $scope.likeThisArtwork = false;
    });
  };

}]);