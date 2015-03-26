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

        function deleteRelationship(array, idkill) {
          for(var i = 0; i < array.length; i++) {
            if(array[i].id == idkill) {
              removeRelationshipWithIndex(array, i);
            };
          };
        }
        deleteRelationship($scope.user.passive_relationships, toDelete);

      });

      $scope.followingThisUser = false;

    };

// testArray = [{name: "Oli", id: 1}, {name: "Matt", id: 2}]

// removeItemWithId(testArray, 2);





  //   $scope.unmakeAFollowing = function() {
  //   $scope.relationshipId = _.where($scope.profileUser.followings, {follower_id: $scope.currentUser.id})
  //   // console.log($scope.relationshipId[0].id)
  //   data = {following_id: $scope.relationshipId[0].id}
  //   FollowService.destroyFollowing(data)
  //   .then(function(response){
  //     $http.get('/users/user_data')
  //     .success(function(data){
  //       console.log(data);
  //       $scope.getProfileUserFollowers(data);
  //       $scope.currentUserFollowers = JSON.parse(data.all_users);
  //     })
  //   });
  // }

  });

});