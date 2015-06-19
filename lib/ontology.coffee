@methodData = [
  inputs: ["template", "primer"]
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

@kindData = [
  label: 'DNA'
  color: 'success'
  root: 'self'
  parent: null
  children: [
    {label: 'genomic'}
    {label: 'template'}    
    {label: 'plasmid'}
    {label: 'primer'}
    {label: 'ssDNA'}
  ]
,
  label: 'bacteria'
  root: 'self'
  parent: null
  color: 'warning'
  children: [ 
    {label: 'colony'}
    {label: 'liquid culture'}
    {label: 'stab'}
  ]
,  
  label: 'information'
  root: 'self'
  parent: null
  color: 'info'
  children: [ 
    {label: 'DNA sequence'}
    {label: 'gel image'}
    {label: 'growth rate'}
  ]
]
