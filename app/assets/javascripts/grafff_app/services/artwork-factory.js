app.factory('ArtworkFactory', ['$http', function($http) {

  var ArtworkFactory = {
    getAllArtworks: function() {
      return $http.get('/artworks');
    },
    getLatestArtworks: function() {
      return $http.get('/artworks/get_latest_artworks');
    },
    getMainMapArtworks: function() {
      return $http.get('/artworks/get_main_map_artworks');
    },
    addArtwork: function(newArtwork) {
      return $http.post('/artworks/add_artwork', newArtwork);
    }
  };

  return ArtworkFactory;

}]);