app.controller('RelationshipController', function($scope, $http, RelationshipFactory) {

  // Get all relationships, store in variable
  RelationshipFactory.getAllRelationships().then(function(response) {

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

    };

    

    // Function to check if current user is following user
    $scope.isFollowing = function(currentUserId) {

      hasRelationship($scope.allRelationships, currentUserId);

    };

    function hasRelationship(allRelationships, currentUserId) {
      for(var i = 0; i < allRelationships.length; i++) {
        console.log(allRelationships[i].follower_id);
        if(currentUserId === allRelationships[i].follower_id) {
          console.log('match');
          return true;
        };
      };
    }

  });



});