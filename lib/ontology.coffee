@kindData = [
  name: 'DNA'
  color: 'red'
  root: 'self'
  parent: null
  children: [
    {name: 'genomic', parent: 'DNA', root: 'DNA'}
    {name: 'plasmid', parent: 'DNA', root: 'DNA'}
    {name: 'primer', parent: 'DNA', root: 'DNA'}
    {name: 'ssDNA', parent: 'DNA', root: 'DNA'}
  ]
,
  root: 'self'
  parent: null
  name: 'information'
  color: 'green'
  children: [ 
    {name: 'DNA sequence'}
    {name: 'gel image'}
    {name: 'growth rate'}
  ]
]




@methodData = [
  inputs: ["DNA", "primer"]
  outputs: ["DNA"]
  operator: 'PCR'
  description: "copy dna etc etc etc"
,
  inputs: ["DNA", "plasmid"]
  outputs: ["bacteria"]
  operator: 'transformation'
  description: "insert plasmid dna into bacteria"
]