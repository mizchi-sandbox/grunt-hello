(function() {

  window.App = {
    Model: {},
    View: {},
    Controller: {}
  };

  window.HelloCntl = function($scope) {
    return $scope.name = 'World';
  };

  window.FormController = function($scope) {
    var user;
    user = $scope.user = {
      name: 'John Smith',
      address: {
        line1: '123 Main St.',
        city: 'Anytown',
        state: 'AA',
        zip: '12345'
      },
      contacts: [
        {
          type: 'phone',
          value: '1(234) 555-1212'
        }
      ]
    };
    $scope.state = /^\w\w$/;
    $scope.zip = /^\d\d\d\d\d$/;
    $scope.addContact = function() {
      return user.contacts.push({
        type: 'email',
        value: ''
      });
    };
    return $scope.removeContact = function(contact) {
      var i, _i, _ref, _results;
      _results = [];
      for (i = _i = 0, _ref = user.contacts; 0 <= _ref ? _i < _ref : _i > _ref; i = 0 <= _ref ? ++_i : --_i) {
        if (contact(si(user.contacts[i]))) {
          _results.push($scope.user.contacts.splice(i, 1));
        } else {
          _results.push(void 0);
        }
      }
      return _results;
    };
  };

  window.onload = function() {
    return console.log("loaded");
  };

}).call(this);
