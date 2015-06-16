# // methodsData = [
# //   label: 'DNA'
# //   color: 'red'
# //   children: [
# //     label: 'genomic'
# //     label: 'plasmid'
# //     label: 'primer'
# //     label: 'ssDNA'
# //   ]
# //   label: 'information'
# //   color: 'green'
# //   children: [ 
# //     label: 'DNA sequence'
# //     label: 'gel image'
# //     label: 'growth rate'
# //   ]
# // ]

# // for m in methodsData
# //   do (m) -> 
# //     parentId = {}
# //     m.parent = parentId or "root"
# //     TypeCollection.insert m, (id) ->
# //       parentId = id


# // if (TypeCollection.find().count() === 0) {
# //   TypeCollection.insert( {_id: "plasmid", children:[] }); 
# //   TypeCollection.insert( {_id: "genomic", children:[] }); 
# //   // TypeCollection.insert( {_id: "dsDNA", children:[] });
# //   // TypeCollection.insert( {_id: "ssDNA", children:[] });
# //   TypeCollection.insert( {_id: "DNA", children: ["plasmid", "genomic"]} );
  
# //   TypeCollection.insert( {_id: "DNA sequence", children:[] });
# //   TypeCollection.insert( {_id: "growth rate", children:[] });
# //   TypeCollection.insert( {_id: "gel bands", children:[] });
# //   TypeCollection.insert( {_id: "data", children: ["DNA sequence", "growth rate", "gel bands"] });
  
# //   TypeCollection.insert( {_id: "bacterial colonies", children:[] });
# //   TypeCollection.insert( {_id: "bacteria", children:["bacterial colonies"] });
# // }

# // if (Methods.find().count() === 0) {
# //   Methods.insert({
# //     inputs: ["plasmid"],
# //     title: "transformation",
# //     verbPhrase: "put plasmid into bacteria",
# //     description: 'Punch plasmid DNA into bacteria.',
# //     outputs: ["bacteria", "transformed bacteria"]
# //   });
  
# //   Methods.insert({
# //     inputs: ["bacteria"],
# //     title: "solid culture",
# //     verbPhrase: "copy bacteria by growing colonies",
# //     description: 'Grow bacterial colonies on solid media (petri dish etc).',
# //     outputs: ["bacterial colonies"]
# //   });
  
# //   Methods.insert({
# //     inputs: ["bacteria", "plasmid"],
# //     title: "miniprep",
# //     verbPhrase: "get plasmid outof bacteria",
# //     description: 'Crack open bacteria to recover DNA plasmids.',
# //     outputs: ["plasmid"]
# //   });

# //   Methods.insert({
# //     inputs: ["DNA"],
# //     title: "Gel Electrophoresis",
# //     verbPhrase: "sort dna fragments by size",
# //     description: 'separate DNA fragments by size and visualize results',
# //     outputs: ["gel bands"]
# //   });

# // }



