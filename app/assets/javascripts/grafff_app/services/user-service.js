app.factory('UserService', function($http) {

  var UserService = {
    getAllUsers: function() {
      return $http.get('/users/get_all_users');
    },
    getCurrentUser: function() {
      return $http.get('/users/get_current_user');
    }
  };

  return UserService;

});