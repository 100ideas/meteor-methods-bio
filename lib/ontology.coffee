@kindData = [
  label: 'DNA'
  color: 'red'
  root: 'self'
  parent: null
  children: [
    {label: 'genomic'}
    {label: 'plasmid'}
    {label: 'primer'}
    {label: 'ssDNA'}
  ]
,
  label: 'bacteria'
  root: 'self'
  parent: null
  color: 'green'
  children: [ 
    {label: 'colony'}
    {label: 'liquid culture'}
    {label: 'stab'}
  ]
,  
  label: 'information'
  root: 'self'
  parent: null
  color: 'yellow'
  children: [ 
    {label: 'DNA sequence'}
    {label: 'gel image'}
    {label: 'growth rate'}
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
,
  inputs: ["bacteria"]
  outputs: ["plasmid"]
  operator: 'miniprep'
  description: "insert plasmid dna into bacteria"  
]