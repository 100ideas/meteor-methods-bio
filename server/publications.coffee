Meteor.publish 'methods', ->
  MethodCollection.find {}

Meteor.publish 'types', ->
  TypeCollection.find {}
