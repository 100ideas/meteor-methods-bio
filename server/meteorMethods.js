Meteor.methods({
  resetdb: function () {
    TypeCollection.remove({});
    MethodCollection.remove({});

    // children must be inserted before parent
    TypeCollection.insert( {_id: "plasmid", children:[] }); 
    TypeCollection.insert( {_id: "genomic", children:[] }); 
    // TypeCollection.insert( {_id: "dsDNA", children:[] });
    // TypeCollection.insert( {_id: "ssDNA", children:[] });
    TypeCollection.insert( {_id: "DNA", children: ["plasmid", "genomic"]} );
    TypeCollection.insert( {_id: "DNA sequence", children:[] });
    TypeCollection.insert( {_id: "growth rate", children:[] });
    TypeCollection.insert( {_id: "gel bands", children:[] });
    TypeCollection.insert( {_id: "data", children: ["DNA sequence", "growth rate", "gel bands"] });
    TypeCollection.insert( {_id: "bacterial colonies", children:[] });
    TypeCollection.insert( {_id: "bacteria", children:["bacterial colonies"] });

    MethodCollection.insert({
      inputs: ["plasmid"],
      title: "transformation",
      verbPhrase: "put plasmid into bacteria",
      description: 'Punch plasmid DNA into bacteria.',
      outputs: ["bacteria", "transformed bacteria"]
    });

    MethodCollection.insert({
      inputs: ["bacteria"],
      title: "solid culture",
      verbPhrase: "copy bacteria by growing colonies",
      description: 'Grow bacterial colonies on solid media (petri dish etc).',
      outputs: ["bacterial colonies"]
    });
    
    MethodCollection.insert({
      inputs: ["bacteria", "plasmid"],
      title: "miniprep",
      verbPhrase: "get plasmid outof bacteria",
      description: 'Crack open bacteria to recover DNA plasmids.',
      outputs: ["plasmid"]
    });

    MethodCollection.insert({
      inputs: ["DNA"],
      title: "Gel Electrophoresis",
      verbPhrase: "sort dna fragments by size",
      description: 'separate DNA fragments by size and visualize results',
      outputs: ["gel bands"]
    });
  }
});