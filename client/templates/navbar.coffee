Template.navbar.events
  'click #resetdb': (event) -> 
    console.log "About to reset the db"

    Meteor.call 'resetdb'

Template.navbar.events
  'click #resetmethchain': (event) -> 
    Session.set("selectedMethod", "")

    