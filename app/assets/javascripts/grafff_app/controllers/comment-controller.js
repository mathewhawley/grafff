app.controller('CommentController', function($scope, $http, UserFactory, CommentFactory) {

  UserFactory.getCurrentUser().then(function(response) {

    $scope.currentUser = response.data;

    $scope.postComment = function(comment) {

      // Make an object to be passed to database
      var newComment = {};
      newComment['content'] = comment.content;
      newComment['user_id'] = $scope.currentUser.id;
      newComment['artwork_id'] = $scope.artwork.id;

      CommentFactory.newComment(newComment).then(function(response) {
        CommentFactory.getAllComments().then(function(response) {
          
          // Loop through all artworks. Get ones that have artwork id that matches '$scope.artwork.id'
          function thisArtworkComments(array, id) {
            var comments = [];
            for(var i = 0; i < array.length; i++) {
              if(array[i].artwork_id === id) {
                comments.push(array[i]);
              };
            };
            return comments;
          }
          $scope.comments = thisArtworkComments(response.data, $scope.artwork.id);

        });

      });

      $scope.comment = '';
      var commentField = document.getElementById('comment-field');
      commentField.blur();

    };

  });

});