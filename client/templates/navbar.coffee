Template.navbar.events
  'click #resetdb': (event) -> 
    console.log "About to reset the db"

    Meteor.call 'resetdb'