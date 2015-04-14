app.controller('MainMapController', [
  '$scope',
  '$timeout',
  'ArtworkFactory',
  function(
    $scope,
    $timeout,
    ArtworkFactory
  ) {

  // Get all artworks for main map
  ArtworkFactory.getMainMapArtwork()
  .then(function(response) {
    $scope.mapArtwork = [];
    var iterator = 0;
    for (var i = 0; i < response.data.length; i++) {
      $timeout(function() {
        $scope.mapArtwork.push(response.data[iterator++]);
      }, i * 100);
    }
  });

  // DATE PICKER
  // ===========

  $scope.today = function() {
    $scope.dt = null;
  };
  $scope.today();

  // Disable weekend selection
  $scope.disabled = function(date, mode) {
    return ( mode === 'day' && ( date.getDay() === 0 || date.getDay() === 6 ) );
  };

  $scope.toggleMin = function() {
    $scope.minDate = $scope.minDate ? null : new Date();
  };
  $scope.toggleMin();

  $scope.open = function($event) {
    $event.preventDefault();
    $event.stopPropagation();

    $scope.opened = true;
  };

  $scope.dateOptions = {
    formatYear: 'yy',
    startingDay: 1
  };

  $scope.formats = ['dd-MMMM-yyyy', 'yyyy/MM/dd', 'dd.MM.yyyy', 'shortDate'];
  $scope.format = $scope.formats[0];

}]);