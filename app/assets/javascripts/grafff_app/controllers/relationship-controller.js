app.controller('RelationshipController', function($scope, $http, RelationshipFactory) {

  RelationshipFactory.getAllRelationships().then(function(response) {

    // RelationshipFactory.amIFollowing($scope.user.id)
    // .then(function(response) {
    //   // find out if i am following?
    //   $scope.followingThisUser = true/false?

    // })

    // Store all relationships
    $scope.allRelationships = response.data;

    // Function to follow user
    $scope.followUser = function(currentUserId, userId) {

      var relationship = {};
      relationship['followed_id'] = userId;
      relationship['follower_id'] = currentUserId;

      RelationshipFactory.followUser(relationship).then(function(response) {
        $scope.user.passive_relationships.push(response.data);
      });

      $scope.followingThisUser = true;

    };

    $scope.unfollowUser = function(currentUserId) {

      var relationship = _.where($scope.user.passive_relationships, { follower_id: currentUserId });
      var relationshipId = relationship[0].id;

      RelationshipFactory.unfollowUser(relationshipId).then(function(response) {
        
        var unfollowRelationship = _.where($scope.user.passive_relationships, { id: relationshipId });
        
        var toDelete = unfollowRelationship[0].id;

        function removeRelationshipWithIndex(array, index) {
          array.splice(index, 1);
        }

        function deleteRelationship(array, id) {
          for(var i = 0; i < array.length; i++) {
            if(array[i].id == id) {
              removeRelationshipWithIndex(array, i);
            };
          };
        }
        deleteRelationship($scope.user.passive_relationships, toDelete);

      });

      $scope.followingThisUser = false;

    };

  });

});