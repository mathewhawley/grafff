app.factory('CommentFactory', ['$http', function($http) {

  var CommentFactory = {
    getThisArtworkComments: function(artworkId) {
      return $http.get('/artworks/comments', { params: artworkId });
    },
    getAllComments: function() {
      return $http.get('/comments/all_comments');
    },
    newComment: function(comment) {
      return $http.post('/comments/new_comment', comment);
    }
  };

  return CommentFactory;

}]);