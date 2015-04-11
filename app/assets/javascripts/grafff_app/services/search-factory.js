app.factory('SearchFactory', ['$http', function($http) {

  var SearchFactory = {
    searchUsers: function(query) {
      return $http.post('/users/search', query);
    }
  };

  return SearchFactory;

}]);