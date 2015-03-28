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

    console.log('marker clicked');
    console.log(position);
  };

});