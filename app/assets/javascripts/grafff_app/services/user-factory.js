app.factory('UserFactory', ['$http', function($http) {

  var UserFactory = {
    getCurrentUser: function() {
      return $http.get('/users/current_user');
    },
    getThisUser: function(userId) {
      return $http.get('/users/show', { params: userId });
    },
    getUserLikes: function(userId) {
      return $http.get('/users/likes', { params: userId });
    },
    getUserFollowedArtists: function(userId) {
      return $http.get('/users/followed_artists', { params: userId });
    },
    getAllArtists: function() {
      return $http.get('/artists');
    },
    getPopularArtists: function() {
      return $http.get('/home/popular_artists');
    },
    getArtistArtworks: function(userId) {
      return $http.get('/users/artworks', { params: userId });
    }
  };

  return UserFactory;

}]);