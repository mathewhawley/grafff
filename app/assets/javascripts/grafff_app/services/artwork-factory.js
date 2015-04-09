app.factory('ArtworkFactory', ['$http', function($http) {

  var ArtworkFactory = {
    getAllArtworks: function() {
      return $http.get('/artworks');
    },
    getLatestArtworks: function() {
      return $http.get('/home/latest_artworks');
    },
    getMapArtwork: function() {
      return $http.get('/home/map');
    },
    addArtwork: function(newArtwork) {
      return $http.post('/artworks/new_artwork', newArtwork);
    }
  };

  return ArtworkFactory;

}]);