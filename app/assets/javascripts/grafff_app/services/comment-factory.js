app.factory('CommentFactory', ['$http', function($http) {

  var CommentFactory = {
    getAllComments: function() {
      return $http.get('/comments/all_comments');
    },
    newComment: function(comment) {
      return $http.post('/comments/new_comment', comment);
    }
  };

  return CommentFactory;

}]);