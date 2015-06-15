# https://mbraak.github.io/jqTree/#general

data = [
  label: 'DNA'
  children: [
    label: 'genomic'
  ,
    label: 'plasmid'
    children: [
      label: 'ssDNA'
    ] 
  ]
  ,
  label: 'data'
  children: [ 
    label: 'DNA sequence'
  ]
]

$('#termTree').tree
  data: data

console.log data