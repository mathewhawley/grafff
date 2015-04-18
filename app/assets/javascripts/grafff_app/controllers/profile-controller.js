app.controller('ProfileController', ['$scope', '$http', '$route', 'ArtworkFactory', 'UserFactory', function($scope, $http, $route, ArtworkFactory, UserFactory) {

  // ACTIVITY FEED

  UserFactory.getAllUsers().then(function(response) {

    // If user isn't an artist get artworks for activity feed
    function ifArtist(user) {
      
      if(user && user.is_artist === false && user.active_relationships.length !== 0) {
        var userRelationships = $scope.user.active_relationships;

        function getArtworks(artists) {
          var artworks = [];
          for(var i = 0; i < artists.length; i++) {
            artworks.push(artists[i].artworks);
          };
          return artworks;
        }

        // Loop through relationships, get artists
        function getArtistsFromRelationships(relationships) {
          var artists = [];
          for(var i = 0; i < relationships.length; i++) {
            artists.push(relationships[i].followed);
            var artworks = getArtworks(artists);
          };
          return artworks;
        }
        var artworksArray = getArtistsFromRelationships(userRelationships);
        
        // Put all artworks into one object
        $scope.followedArtistArtworks = artworksArray.reduce(function(prev, curr) {
          return prev.concat(curr);
        });
      };

    }
    ifArtist($scope.user);

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






  // NEW ARTWORK FORM

  // Set new artwork location
  $scope.getPosition = function(position) {

    longitude = position.latLng.D;
    latitude = position.latLng.k;

    $http.get('https://maps.googleapis.com/maps/api/geocode/json?latlng=' + latitude + ',' + longitude + '&sensor=true').then(function(response) {
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
          alert(err.message);
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

    ArtworkFactory.addArtwork($scope.newArtwork).then(function(response) {
      $scope.user.artworks.push(response.data);
      $route.reload();
    });

  };

}]);