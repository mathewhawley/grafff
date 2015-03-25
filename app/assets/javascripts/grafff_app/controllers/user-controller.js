app.controller('UserController', function($scope, $http, $routeParams, UserFactory, ArtworkFactory){


  UserFactory.getAllUsers().then(function(response) {

    // Store all user data in '$scope.allUsers'
    $scope.allUsers = response.data;

    // Get user from params
    function getUserFromParams(allUsers, routeParams) {
      for(var i = 0; i < allUsers.length; i++) {
        if(allUsers[i].id === JSON.parse(routeParams.id)) {
          var user = allUsers[i];
        }
      }
      return user;
    }

    // Store user in variable and get their likes
    $scope.user = getUserFromParams($scope.allUsers, $routeParams);
    $scope.userLikes = $scope.user.likes;
    
    // Get likes from user, store in array

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