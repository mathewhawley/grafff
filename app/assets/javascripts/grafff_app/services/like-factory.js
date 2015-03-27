app.factory('LikeFactory', function($http) {

  var LikeFactory = {
    newLike: function(like) {
      return $http.post('/likes/new_like', like);
    }
  };

  return LikeFactory;

});