app.factory('ArtworkFactory', ['$http', function($http) {

  var ArtworkFactory = {
    getThisArtwork: function(artworkId) {
      return $http.get('/artworks/show', { params: artworkId });
    },
    getAllArtworks: function() {
      return $http.get('/artworks');
    },
    getLatestArtworks: function() {
      return $http.get('/home/latest_artworks');
    },
    getMainMapArtwork: function() {
      return $http.get('/home/map');
    },
    addArtwork: function(newArtwork) {
      return $http.post('/artworks/new_artwork', newArtwork);
    }
  };

  return ArtworkFactory;

}]);