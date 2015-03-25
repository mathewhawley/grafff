app.factory('ArtworkFactory', function($http) {

  var ArtworkFactory = {
    getAllArtworks: function() {
      return $http.get('/artworks/get_all_artworks');
    }
  };

  return ArtworkFactory;

});