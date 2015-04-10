app.factory('RelationshipFactory', ['$http', function($http) {

  var RelationshipFactory = {
    getAllRelationships: function() {
      return $http.get('relationships/get_all_relationships');
    },
    followArtist: function(relationship) {
      return $http.post('relationships/follow_artist', relationship);
    },
    unfollowArtist: function(relationship) {
      return $http.post('/relationships/unfollow_artist', relationship);
    }
  };

  return RelationshipFactory;

}]);
