app.factory('CommentFactory', ['$http', function($http) {

  var CommentFactory = {
    getThisArtworkComments: function(artworkId) {
      return $http.get('/artworks/comments', { params: artworkId });
    },
    newComment: function(comment) {
      return $http.post('/comments/new_comment', comment);
    }
  };

  return CommentFactory;

}]);