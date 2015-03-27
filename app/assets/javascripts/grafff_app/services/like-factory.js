app.factory('LikeFactory', function($http) {

  var LikeFactory = {
    getAllLikes: function() {
      return $http.get('/likes/get_all_likes');
    },
    newLike: function(like) {
      return $http.post('/likes/new_like', like);
    }
  };

  return LikeFactory;

});