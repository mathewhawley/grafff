app.factory('ArtworkFactory', ['$http', function($http) {

  var ArtworkFactory = {
    getAllArtworks: function() {
      return $http.get('/artworks/get_all_artworks');
    },
    getLatestArtworks: function() {
      return $http.get('/artworks/get_latest_artworks');
    },
    addArtwork: function(newArtwork) {
      return $http.post('/artworks/add_artwork', newArtwork);
    }
  };

  return ArtworkFactory;

}]);