app.factory('LikeFactory', ['$http', function($http) {

  var LikeFactory = {
    getThisArtworkLikes: function(artworkId) {
      return $http.get('/artworks/likes', { params: artworkId })
    },
    likeThisArtwork: function(like) {
      return $http.post('/likes/like_artwork', like);
    },
    unlikeArtwork: function(like) {
      return $http({
        method: 'POST',
        url: 'likes/unlike_artwork',
        data: { id: like }
      });
    }
  };

  return LikeFactory;

}]);