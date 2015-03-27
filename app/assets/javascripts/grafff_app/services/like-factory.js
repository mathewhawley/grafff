app.factory('LikeFactory', function($http) {

  var LikeFactory = {
    getAllLikes: function() {
      return $http.get('/likes/get_all_likes');
    },
    likeArtwork: function(like) {
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

});