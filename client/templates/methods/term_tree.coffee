# https://mbraak.github.io/jqTree/#general

data = [
  label: 'DNA'
  children: [
    label: 'genomic'
  ,
    label: 'plasmid'
    # children: [
    #   label: 'ssDNA'
    # ] 
  ]
 ,
  label: 'information'
  children: [ 
    label: 'DNA sequence'
  ,
    label: 'gel image'
  ,  
    label: 'growth rate'
  ]
]

Template.termTree.onRendered ->
  this.$('#termTree').tree
    data: data
    autoOpen: true
  console.log "rendering termTree w/ #{data}"