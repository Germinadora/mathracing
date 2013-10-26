@Players = new Meteor.Collection "players"

Meteor.methods
  'reset': ->
     Players.remove({})
  
