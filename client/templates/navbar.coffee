Template.navbar.events
  'click #resetdb': (event) -> 
    console.log "About to reset the db"
    Meteor.call 'resetdb', (error, result) ->
      Console.log "client called Meteor.resetdb: #{result}"