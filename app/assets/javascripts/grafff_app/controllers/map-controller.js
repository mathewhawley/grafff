app.controller('MapController', function($scope, $http) {

  $scope.getPosition = function(position) {

    var longitude = position.latLng.D;
    var latitude = position.latLng.k;

    $http.get('http://maps.googleapis.com/maps/api/geocode/json?latlng=' + latitude + ',' + longitude + '&sensor=true').then(function(response) {
      $scope.nearestAddress = response.data.results[0].formatted_address;
    });

  };

});