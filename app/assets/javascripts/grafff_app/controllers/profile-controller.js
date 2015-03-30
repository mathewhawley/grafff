app.controller('ProfileController', ['$scope', '$http', 'ArtworkFactory', 'UserFactory', function($scope, $http, ArtworkFactory, UserFactory) {

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


  // Set new artwork location
  $scope.getPosition = function(position) {

    longitude = position.latLng.D;
    latitude = position.latLng.k;

    $http.get('http://maps.googleapis.com/maps/api/geocode/json?latlng=' + latitude + ',' + longitude + '&sensor=true').then(function(response) {
      $scope.nearestAddress = response.data.results[0].formatted_address;
    });

  };


  // Submit form, add new artwork
  $scope.addArtwork = function(address) {

    // Create new artwork object
    $scope.newArtwork['address'] = address;
    $scope.newArtwork['lat'] = latitude;
    $scope.newArtwork['lng'] = longitude;
    $scope.newArtwork['user_id'] = $scope.user.id

    ArtworkFactory.addArtwork($scope.newArtwork).then(function(response) {
      $scope.user.artworks.push(response.data);
    });

  };


  // File uploads
  $scope.creds = {
    bucket: 'grafff-temp-bucket',
    access_key: gon.aws_access_key,
    secret_key: gon.aws_secret_key
  };
   
  $scope.upload = function() {
    // Configure The S3 Object 
    AWS.config.update({ accessKeyId: $scope.creds.access_key, secretAccessKey: $scope.creds.secret_key });
    AWS.config.region = 'eu-west-1';
    var bucket = new AWS.S3({ params: { Bucket: $scope.creds.bucket } });
   
    if($scope.file) {
      var params = { Key: $scope.file.name, ContentType: $scope.file.type, Body: $scope.file, ServerSideEncryption: 'AES256' };
   
      bucket.putObject(params, function(err, data) {
        if(err) {
          // There Was An Error With Your S3 Config
          alert(err.message);
          return false;
        } else {
          // Success!
          alert('Upload Done');
        }
      })
      .on('httpUploadProgress',function(progress) {
            // Log Progress Information
            console.log(Math.round(progress.loaded / progress.total * 100) + '% done');
          });
    } else {
      // No File Selected
      alert('No File Selected');
    }
  };

}]);