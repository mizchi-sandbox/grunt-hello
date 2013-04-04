window.App =
  Model: {}
  View: {}
  Controller: {}

window.HelloCntl = ($scope) ->
  $scope.name = 'World';

window.FormController = ($scope) ->
  user = $scope.user =
    name: 'John Smith'
    address:
      line1: '123 Main St.'
      city:'Anytown'
      state:'AA'
      zip:'12345'
    contacts:[
      {type:'phone', value:'1(234) 555-1212'}
    ]

  $scope.state = /^\w\w$/
  $scope.zip = /^\d\d\d\d\d$/

  $scope.addContact = ->
    user.contacts.push({type:'email', value:''});

  $scope.removeContact = (contact) ->
    # for (var i = 0, ii = user.contacts.length; i < ii; i++)
    for i in [0...user.contacts]
      if contact si user.contacts[i]
        $scope.user.contacts.splice(i, 1);

window.onload = ->
  console.log "loaded"

