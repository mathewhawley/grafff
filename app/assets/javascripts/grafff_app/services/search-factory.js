app.factory('SearchFactory', ['$http', function($http) {

  var SearchFactory = {
    searchUsers: function(query) {
      return $http.post('/users/search', query);
    },
    filterArtwork: function(date) {
      console.log(date);
      unixtime = Date.parse(date) / 1000;
      console.log(unixtime);
      return $http.post('/artworks/filter_by_date', unixtime);
    }
  };

  return SearchFactory;

}]);