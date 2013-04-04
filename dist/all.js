(function() {

  window.App = {
    Model: {},
    View: {},
    Controller: {}
  };

  window.HelloCntl = function($scope) {
    return $scope.name = 'World';
  };

  window.onload = function() {
    return console.log("hoge");
  };

}).call(this);
