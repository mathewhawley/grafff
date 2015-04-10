app.controller('UserShowController', ['$scope', '$http', '$routeParams', 'UserFactory', 'RelationshipFactory', function($scope, $http, $routeParams, UserFactory, RelationshipFactory) {

  // Function to check if current user already likes 'this' artwork – called on page load
  function checkIfFollowing(currentUserId, followedId) {
    var relationship = {};
    relationship['follower_id'] = currentUserId;
    relationship['followed_id'] = followedId;

    RelationshipFactory.checkIfFollowing(relationship).then(function(response) {
      $scope.followingThisArtist = response.data;
    });
  }

  // Get user object from params to render on show template
  UserFactory.getThisUser($routeParams).then(function(response) {
    $scope.user = response.data;

    // Check if the 'current user' is already following 'this' user and show the appropriate follow/unfollow button
    checkIfFollowing($scope.currentUser.id, $scope.user.id);
  });

  // Get an artists artworks to render on show template
  UserFactory.getThisArtistArtworks($routeParams).then(function(response) {
    $scope.artistArtworks = response.data;
  });

  // Get the user's likes to render on show template
  UserFactory.getThisUserLikes($routeParams).then(function(response) {
    $scope.userLikes = response.data;
  });

  // Get the user's active relationships
  UserFactory.getThisUserFollowedArtists($routeParams).then(function(response) {
    $scope.userRelationships = response.data;
  });


  // NAVIGATION TABS
  // Set initial tab
  $scope.tab = 1;

  // Select tab on click and set 'tab' value
  $scope.selectTab = function(setTab) {
    $scope.tab = setTab;
  };

  // Show content based on which tab is selected
  $scope.isSelected = function(checkTab) {
    return $scope.tab === checkTab;
  };

  // Follow artist – on 'follow' button click
  $scope.followArtist = function() {
    var relationship = {};
    relationship['followed_id'] = $scope.user.id;
    relationship['follower_id'] = $scope.currentUser.id;

    // Post new relationship to database
    RelationshipFactory.followArtist(relationship).then(function(response) {
      // Update this user's passive relationships on the view
      $scope.user.passive_relationships.push(response.data);

      // Set variable to true – this will switch 'follow' button to 'unfollow'
      $scope.followingThisArtist = true;
    });
  };

  // Unfollow artist – on 'unfollow' button click
  $scope.unfollowArtist = function() {
    var relationship = {};
    relationship['followed_id'] = $scope.user.id;
    relationship['follower_id'] = $scope.currentUser.id;

    // Post relationship to database
    RelationshipFactory.unfollowArtist(relationship).then(function(response) {
      // Update this user's passive relationships on the view
      $scope.user.passive_relationships = response.data;

      // Set variable to false – this will switch 'unfollow' button to 'follow'
      $scope.followingThisArtist = false;
    });
  };

}]);