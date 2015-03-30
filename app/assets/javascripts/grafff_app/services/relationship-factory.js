app.factory('RelationshipFactory', ['$http', function($http) {

  var RelationshipFactory = {
    getAllRelationships: function() {
      return $http.get('relationships/get_all_relationships');
    },
    followUser: function(relationship) {
      return $http.post('relationships/follow_user', relationship);
    },
    unfollowUser: function(relationship) {
      return $http({
        method: 'POST',
        url: 'relationships/unfollow_user',
        data: { id: relationship }
      });
    }
  };

  return RelationshipFactory;

}]);
