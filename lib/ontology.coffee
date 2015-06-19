@kindData = [
  label: 'DNA'
  color: 'success'
  root: 'self'
  parent: null
  children: [
    {label: 'genomic'}
    {label: 'template'}    
    {label: 'plasmid'}
    {label: 'oligo'}
    {label: 'ssDNA'}
    {label: 'DNAs'}
  ]
,
  label: 'bacteria'
  root: 'self'
  parent: null
  color: 'warning'
  children: [ 
    {label: 'colonies'}
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

@methodData = [
  operator: 'order DNA synthesis'
  inputs: ["DNA sequence"]
  outputs: ["oligo"]
  description: "grow clonal colonies of bacteria"   
,
  operator: 'digest'
  inputs: ["DNA"]
  outputs: ["DNAs"]
  description: "cut dna at sites"   
,
  operator: 'ligate'
  inputs: ["DNA"]
  outputs: ["DNAs"]
  description: "join fragments of DNA" 
,  
  operator: 'PCR'
  inputs: ["template", "oligo"]
  outputs: ["DNA"]
  description: "copy dna etc etc etc"
,
  operator: 'transform'
  inputs: ["DNA", "plasmid"]
  outputs: ["bacteria"]
  description: "insert plasmid dna into bacteria"
,
  operator: 'plate colonies'
  inputs: ["bacteria"]
  outputs: ["colonies"]
  description: "grow clonal colonies of bacteria"   
,
  operator: 'genomic prep'
  inputs: ["bacteria"]
  outputs: ["genomic"]
  description: "isolate genome from bacteria"  
,
  operator: 'miniprep'
  inputs: ["liquid culture"]
  outputs: ["plasmid"]
  description: "insert plasmid dna into bacteria" 
,
  operator: 'order primers'
  inputs: ["DNA sequence"]
  outputs: ["oligo"]
  description: "grow clonal colonies of bacteria" 
]

