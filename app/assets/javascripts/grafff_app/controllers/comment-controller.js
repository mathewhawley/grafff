app.controller('CommentController', function($scope, $http, UserFactory) {

  console.log('I am the comment controller');

  UserFactory.getCurrentUser().then(function(response) {
    $scope.currentUser = response.data;

    $scope.postComment = function(comment) {
      // Make a hash to be passed to database
      var newComment = {};
      newComment['content'] = comment.content;
      newComment['user_id'] = $scope.currentUser.id;
      newComment['artwork_id'] = $scope.artwork.id;
      console.log(newComment);
    };
  });

});