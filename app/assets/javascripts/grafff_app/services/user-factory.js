app.factory('UserFactory', ['$http', function($http) {

  var UserFactory = {
    getCurrentUser: function() {
      return $http.get('/users/current_user');
    },
    getThisUser: function(userId) {
      return $http.get('/users/show', { params: userId });
    },
    getThisUserLikes: function(userId) {
      return $http.get('/users/likes', { params: userId });
    },
    getThisUserFollowedArtists: function(userId) {
      return $http.get('/users/followed_artists', { params: userId });
    },
    getThisArtistArtworks: function(userId) {
      return $http.get('/users/artworks', { params: userId });
    },
    getAllArtists: function() {
      return $http.get('/artists');
    },
    getPopularArtists: function() {
      return $http.get('/home/popular_artists');
    }
  };

  return UserFactory;

}]);