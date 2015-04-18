app.factory('RelationshipFactory', ['$http', function($http) {

  var RelationshipFactory = {
    followArtist: function(relationship) {
      return $http.post('relationships/follow_artist', relationship);
    },
    unfollowArtist: function(relationship) {
      return $http.post('/relationships/unfollow_artist', relationship);
    },
    checkIfFollowing: function(relationship) {
      return $http.get('/users/check_if_following', { params: relationship });
    },
    activityFeedArtwork: function(id) {
      return $http.get('/relationships/activity_feed', { params: id })
    }
  };

  return RelationshipFactory;

}]);
