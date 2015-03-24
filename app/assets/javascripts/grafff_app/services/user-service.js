app.factory('UserService', function($http) {

  var UserService = {
    getCurrentUser: function() {
      return $http.get('/users/show');
    }
  };

  return UserService;

});