app.controller('UserController', function($http, UserService){

  UserService.getCurrentUser().then(function(response) {
    console.log(response.data);
  });

});