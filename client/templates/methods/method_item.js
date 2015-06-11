Template.methodItem.helpers({
  domain: function() {
    var a = document.createElement('a');
    a.href = this.url;
    return a.hostname;
  },
  // inputs: function() {
  //   return this.inputs.toString();
  // },
  // outputs: function() {
  //   return this.outputs.toString();
  // }  
});