app.controller('UserController', function($scope, $http, $routeParams, UserFactory, ArtworkFactory){


  UserFactory.getAllUsers().then(function(response) {

    // Store all user data in '$scope.allUsers'
    $scope.allUsers = response.data;

    angular.forEach($scope.allUsers, function(value, key) {
      // console.log(value.comments);
      // console.log(value.likes);
      // console.log(value.artworks);
      // console.log(value.active_relationships);
      // console.log(value.passive_relationships);
    })

    // Get user from params
    function getUserFromParams(allUsers, routeParams) {
      for(var i = 0; i < allUsers.length; i++) {
        if(allUsers[i].id === JSON.parse(routeParams.id)) {
          var user = allUsers[i];
        }
      }
      return user;
    }

    // Store user in variable
    $scope.user = getUserFromParams($scope.allUsers, $routeParams);

    // Get user likes
    $scope.userLikes = $scope.user.likes;

    // Function to get artwork object from each like
    function getLikedArtwork(userLikes) {
      var likedArtwork = [];
      for(var i = 0; i < userLikes.length; i++) {
        likedArtwork.push(userLikes[i]);
      };
      return likedArtwork;
    }
    $scope.likedArtwork = getLikedArtwork($scope.userLikes);
    console.log($scope.likedArtwork);





    $scope.userLikes = $scope.user.likes;

    // Loop through likes, store ID in $scope.artworkIdArray
    function artworkIdArray(userLikes) {
      var artworkIdArray = [];
      for(var i = 0; i < userLikes.length; i++) {
        artworkIdArray.push(userLikes[i].artwork_id);
      }
      return artworkIdArray;
    }
    
    $scope.artworkIdArray = artworkIdArray($scope.userLikes);

  });


  UserFactory.getCurrentUser().then(function(response) {

    // Store current user data in '$scope.currentUser'
    $scope.currentUser = response.data;

  });

});