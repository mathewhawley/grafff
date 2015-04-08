app.factory('UserFactory', ['$http', function($http) {

  var UserFactory = {
    getUser: function(userId) {
      return $http.get('/users', { params: userId });
    },
    getCurrentUser: function() {
      return $http.get('/users/get_current_user');
    },
    getAllUsers: function() {
      return $http.get('/users/get_all_users');
    },
    getArtists: function() {
      return $http.get('/users/get_artists');
    }
  };

  return UserFactory;

}]);