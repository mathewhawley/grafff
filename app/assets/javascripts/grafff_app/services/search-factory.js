app.factory('SearchFactory', ['$http', function($http) {

  var SearchFactory = {
    searchUsers: function(query) {
      return $http.post('/search/all_users', query);
    }
  };

  return SearchFactory;

}]);