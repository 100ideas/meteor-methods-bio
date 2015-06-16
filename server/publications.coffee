Meteor.publish 'types', ->
  TypeCollection.find {}

Meteor.publish 'methods', ->
  MethodCollection.find {}

