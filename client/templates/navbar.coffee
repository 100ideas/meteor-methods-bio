Template.navbar.events
  'click #resetdb': (event) -> 
    Console.log "About to reset the db"
    Meteor.call 'resetdb', (error, result) ->
      Console.log "client called Meteor.resetdb: #{result}"