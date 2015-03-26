app.controller('CommentController', function($scope, $http, UserFactory, CommentFactory) {

  UserFactory.getCurrentUser().then(function(response) {

    $scope.currentUser = response.data;

    $scope.postComment = function(comment) {
      // Make an object to be passed to database
      var newComment = {};
      newComment['content'] = comment.content;
      newComment['user_id'] = $scope.currentUser.id;
      newComment['artwork_id'] = $scope.artwork.id;
      console.log(newComment);

      CommentFactory.newComment(newComment).then(function(response) {
        $scope.comments.push(response.data);
        $scope.commentField.$setPristine();
      });

      

    };

  });

});