app.controller('RelationshipController', function($scope, $http, RelationshipFactory, UserFactory) {

  // Get all relationships, store in variable
  RelationshipFactory.getAllRelationships().then(function(response) {

    $scope.allRelationships = response.data;

  });

  // Function to follow user
  $scope.followUser = function(currentUserId, userId) {

    var relationship = {};
    relationship['followed_id'] = userId;
    relationship['follower_id'] = currentUserId;

    RelationshipFactory.followUser(relationship).then(function(response) {
      $scope.allRelationships.push(response.data);
    });
    
  };

});