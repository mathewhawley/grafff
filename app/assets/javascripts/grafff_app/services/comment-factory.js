app.factory('CommentFactory', function($http) {

  var CommentFactory = {
    newComment: function(comment) {
      return $http.post('/comments/new_comment', comment);
    }
  };

  return CommentFactory;

});