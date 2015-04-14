app.factory('SearchFactory', ['$http', function($http) {

  var SearchFactory = {
    searchUsers: function(query) {
      return $http.post('/users/search', query);
    },
    filterArtwork: function(date) {
      return $http.post('/artworks/filter_by_date', date);
    }
  };

  return SearchFactory;

}]);