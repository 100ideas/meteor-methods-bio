# https://mbraak.github.io/jqTree/#general
Template.termTree.onRendered ->
  this.$('#termTree').tree
    data: kindData
    autoOpen: true