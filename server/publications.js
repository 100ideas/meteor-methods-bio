Meteor.publish('methods', function() {
  return Methods.find();
});

Meteor.publish('methtypes', function() {
  return MethTypes.find();
});