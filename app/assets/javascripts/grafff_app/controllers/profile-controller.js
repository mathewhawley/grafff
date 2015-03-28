app.controller('ProfileController', function($scope, $http) {

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

    var longitude = position.latLng.D;
    var latitude = position.latLng.k;

    $http.get('http://maps.googleapis.com/maps/api/geocode/json?latlng=' + latitude + ',' + longitude + '&sensor=true').then(function(response) {
      $scope.nearestAddress = response.data.results[0].formatted_address;
    });

  };

});