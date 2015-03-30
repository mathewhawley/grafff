app.service('SearchService', function() {

  var SearchService = {

    searchUsers: function(allUsers, query) {
      users = [];
      for(var i = 0; i< allUsers.length; i++) {
        if(allUsers[i].first_name.indexOf(query) >= 0 || allUsers[i].last_name.indexOf(query) >= 0 || allUsers[i].username.indexOf(query) >= 0) {
          users.push(allUsers[i]);
        };
      };
    },
    getResults: function() {
      return users;
    }
  };

  return SearchService;

});