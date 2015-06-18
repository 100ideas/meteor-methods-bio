@typeData = [
  type: 'DNA'
  color: 'red'
  children: [ 
    type: 'genomic'
    type: 'plasmid'
    type: 'primer'
    type: 'ssDNA'
  ],
  type: 'information'
  color: 'green'
  children: [ 
    type: 'DNA sequence'
    type: 'gel image'
    type: 'growth rate'
  ]
]

@methodData = [
  inputs: ["DNA", "primer"]
  outputs: ["DNA"]
  operator: 'PCR'
  description: "copy dna etc etc etc"
]