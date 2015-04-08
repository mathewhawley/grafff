app.controller('UserShowController', ['$scope', '$http', '$routeParams', 'UserFactory', function($scope, $http, $routeParams, UserFactory) {


  UserFactory.getAllUsers().then(function(response) {

    // Store all user data in '$scope.allUsers'
    $scope.allUsers = response.data;


    // Get user from params
    function getUserFromParams(allUsers, routeParams) {
      for(var i = 0; i < allUsers.length; i++) {
        if(allUsers[i].id === JSON.parse(routeParams.id)) {
          var user = allUsers[i];
        };
      };
      return user;
    }
    $scope.user = getUserFromParams($scope.allUsers, $routeParams);


    // Function to get the artwork objects from each like
    function getLikedArtworks(userLikes) {
      var likedArtworks = [];
      for(var i = 0; i < userLikes.length; i++) {
        likedArtworks.push(userLikes[i].artwork);
      };
      return likedArtworks;
    }
    $scope.likedArtworks = getLikedArtworks($scope.user.likes);


    // Get artists followed by user
    function getFollowedArtists(activeRelationships) {
      var followedArtists = [];
      for(var i = 0; i < activeRelationships.length; i++) {
        followedArtists.push(activeRelationships[i].followed);
      };
      return followedArtists;
    }
    $scope.followedArtists = getFollowedArtists($scope.user.active_relationships);


    // Get user artworks
    $scope.userArtworks = $scope.user.artworks;
  });

  

  // UserFactory.getCurrentUser().then(function(response) {

  //   // Store current user data in '$scope.currentUser'
  //   $scope.currentUser = response.data;

  // });

}]);