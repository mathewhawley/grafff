app.factory('LikeFactory', ['$http', function($http) {

  var LikeFactory = {
    getThisArtworkLikes: function(artworkId) {
      return $http.get('/artworks/likes', { params: artworkId })
    },
    likeThisArtwork: function(like) {
      return $http.post('/likes/like_artwork', like);
    },
    unlikeThisArtwork: function(like) {
      return $http.post('/likes/unlike_artwork', like);
    }
  };

  return LikeFactory;

}]);