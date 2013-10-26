Template.race.events
  'click #btn-reset': ->
    Meteor.call 'reset'
  'keypress #answer': (event)->
    if event.charCode == 13
      user = Players.findOne player: Meteor.userId()
      Players.update(user._id, 
        $inc:
          position: 1)
    event.preventDefault()
    
  'click #btn-join': (event)->
    user = Players.findOne player: Meteor.userId()
    if !user
      Players.insert 
        player: Meteor.userId()
        username: Meteor.user().services.facebook.username
        position: 0
    $('#btn-join').fadeOut()
  
Template.race.players = ->
  Players.find()

Template.race.juan = ->
  Meteor.userId() == 'yJj28oTWT8AYHDkoT' or Meteor.userId() == 'aDFnce5PQtHpjwGwW'
