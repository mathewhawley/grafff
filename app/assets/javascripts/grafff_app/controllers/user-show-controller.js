app.controller('UserShowController', [
  '$scope',
  '$http',
  '$routeParams',
  '$route',
  'UserFactory',
  'RelationshipFactory',
  'ArtworkFactory', 
  function(
    $scope,
    $http,
    $routeParams,
    $route,
    UserFactory,
    RelationshipFactory,
    ArtworkFactory
  ) {

  // Function to check if current user already likes 'this' artwork – called on page load
  function checkIfFollowing(currentUserId, followedId) {
    var relationship = {};
    relationship['follower_id'] = currentUserId;
    relationship['followed_id'] = followedId;

    RelationshipFactory.checkIfFollowing(relationship)
    .then(function(response) {
      $scope.followingThisArtist = response.data;
    });
  }

  // Get user object from params to render on show template
  UserFactory.getThisUser($routeParams)
  .then(function(response) {
    $scope.user = response.data;

    // Check if the 'current user' is already following 'this' user and show the appropriate follow/unfollow button
    if($scope.currentUser) {
      checkIfFollowing($scope.currentUser.id, $scope.user.id);      
    }
  });

  // Get an artists artworks to render on show template
  UserFactory.getThisArtistArtworks($routeParams)
  .then(function(response) {
    $scope.artistArtworks = response.data;
  });

  // Get this user's likes to render on show template
  UserFactory.getThisUserLikes($routeParams)
  .then(function(response) {
    $scope.userLikes = response.data;
  });

  // Get this user's active relationships
  UserFactory.getThisUserFollowedArtists($routeParams)
  .then(function(response) {
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
    RelationshipFactory.followArtist(relationship)
    .then(function(response) {
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
    RelationshipFactory.unfollowArtist(relationship)
    .then(function(response) {
      // Update this user's passive relationships on the view
      $scope.user.passive_relationships = response.data;

      // Set variable to false – this will switch 'unfollow' button to 'follow'
      $scope.followingThisArtist = false;
    });
  };

  // NEW ARTWORK FORM
  // Set new artwork location
  $scope.getPosition = function(position) {

    longitude = position.latLng.D;
    latitude = position.latLng.k;

    $http.get('https://maps.googleapis.com/maps/api/geocode/json?latlng=' + latitude + ',' + longitude + '&sensor=true')
    .then(function(response) {
      $scope.nearestAddress = response.data.results[0].formatted_address;
    });

  };

  // File uploads
  $scope.creds = {
    bucket: 'grafff',
    access_key: gon.aws_access_key,
    secret_key: gon.aws_secret_key
  };
   
  $scope.upload = function(address) {
    // Configure The S3 Object 
    AWS.config.update({ accessKeyId: $scope.creds.access_key, secretAccessKey: $scope.creds.secret_key });
    AWS.config.region = 'eu-west-1';
    var bucket = new AWS.S3({ params: { Bucket: $scope.creds.bucket } });
   
    if($scope.file) {
      var params = { Key: $scope.file.name, ContentType: $scope.file.type, Body: $scope.file, ServerSideEncryption: 'AES256' };
   
      bucket.putObject(params, function(err, data) {
        if(err) {
          // There Was An Error With Your S3 Config
          console.log(err)
          // alert(err.message);
          return false;
        } else {
          // Success!
          // alert('Upload Done');
        };
      })
      .on('httpUploadProgress',function(progress) {
            // Log Progress Information
            console.log(Math.round(progress.loaded / progress.total * 100) + '% done');
          });
    } else {
      // No File Selected
      alert('No File Selected');
    };

    $scope.imageUrl = 'https://s3-eu-west-1.amazonaws.com/grafff/' + $scope.file.name;

    $scope.newArtwork['address'] = address;
    $scope.newArtwork['lat'] = latitude;
    $scope.newArtwork['lng'] = longitude;
    $scope.newArtwork['user_id'] = $scope.user.id;
    $scope.newArtwork['image'] = $scope.imageUrl;

    ArtworkFactory.addArtwork($scope.newArtwork)
    .then(function(response) {
      $scope.artistArtworks.push(response.data);
      $route.reload();
    });

  };

}]);