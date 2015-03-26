app.factory('RelationshipFactory', function($http) {

  var RelationshipFactory = {
    getAllRelationships: function() {
      return $http.get('relationships/get_all_relationships');
    },
    followUser: function(relationship) {
      return $http.post('relationships/follow_user', relationship);
    }
  };

  return RelationshipFactory;

});