Meteor.publish 'kinds', ->
  KindCollection.find {}

Meteor.publish 'methods', ->
  MethodCollection.find {}

