app.controller('MapController', function($scope, $http) {

  // var map;
  // $scope.$on('mapInitialized', function(evt, evtMap) {
  //   map = evtMap;
  //   $scope.placeMarker = function(e) {
  //     var marker = new google.maps.Marker({position: e.latLng, draggable: true, map: map});
  //     map.panTo(e.latLng);
  //     console.log(marker.position);
  //   };
  // });

  $scope.getPosition = function(position) {

    var longitude = position.latLng.D;
    var latitude = position.latLng.k;

    $http.get('http://maps.googleapis.com/maps/api/geocode/json?latlng=' + latitude + ',' + longitude + '&sensor=true').then(function(response) {
      $scope.nearestAddress = response.data.results[0].formatted_address;
    });
    
  };

});