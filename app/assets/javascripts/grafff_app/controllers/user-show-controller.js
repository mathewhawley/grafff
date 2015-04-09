app.controller('UserShowController', ['$scope', '$http', '$routeParams', 'UserFactory', function($scope, $http, $routeParams, UserFactory) {

  // Get current user
  UserFactory.getCurrentUser().then(function(response) {
    $scope.currentUser = response.data;
  });

  // Get user object from params to render on show template
  UserFactory.getThisUser($routeParams).then(function(response) {
    $scope.user = response.data;
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

}]);