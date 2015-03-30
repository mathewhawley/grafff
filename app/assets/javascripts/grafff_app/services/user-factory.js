app.factory('UserFactory', ['$http', function($http) {

  var UserFactory = {
    getAllUsers: function() {
      return $http.get('/users/get_all_users');
    },
    getCurrentUser: function() {
      return $http.get('/users/get_current_user');
    }
  };

  return UserFactory;

}]);