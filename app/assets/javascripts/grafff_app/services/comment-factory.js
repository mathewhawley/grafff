app.factory('CommentFactory', function($http) {

  var CommentFactory = {
    getAllComments: function() {
      return $http.get('/comments/get_all_comments');
    };
    newComment: function(comment) {
      return $http.post('/comments/new_comment', comment);
    }
  };

  return CommentFactory;

});