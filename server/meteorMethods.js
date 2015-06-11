Meteor.methods({
  resetdb: function () {
    MethTypes.remove({});
    Methods.remove({});

    // children must be inserted before parent
    MethTypes.insert( {_id: "plasmid", children:[] }); 
    MethTypes.insert( {_id: "genomic", children:[] }); 
    // MethTypes.insert( {_id: "dsDNA", children:[] });
    // MethTypes.insert( {_id: "ssDNA", children:[] });
    MethTypes.insert( {_id: "DNA", children: ["plasmid", "genomic"]} );
    MethTypes.insert( {_id: "DNA sequence", children:[] });
    MethTypes.insert( {_id: "growth rate", children:[] });
    MethTypes.insert( {_id: "gel bands", children:[] });
    MethTypes.insert( {_id: "data", children: ["DNA sequence", "growth rate", "gel bands"] });
    MethTypes.insert( {_id: "bacterial colonies", children:[] });
    MethTypes.insert( {_id: "bacteria", children:["bacterial colonies"] });

    Methods.insert({
      inputs: ["plasmid"],
      title: "transformation",
      verbPhrase: "put plasmid into bacteria",
      description: 'Punch plasmid DNA into bacteria.',
      outputs: ["bacteria", "transformed bacteria"]
    });

    Methods.insert({
      inputs: ["bacteria"],
      title: "solid culture",
      verbPhrase: "copy bacteria by growing colonies",
      description: 'Grow bacterial colonies on solid media (petri dish etc).',
      outputs: ["bacterial colonies"]
    });
    
    Methods.insert({
      inputs: ["bacteria", "plasmid"],
      title: "miniprep",
      verbPhrase: "get plasmid outof bacteria",
      description: 'Crack open bacteria to recover DNA plasmids.',
      outputs: ["plasmid"]
    });

    Methods.insert({
      inputs: ["DNA"],
      title: "Gel Electrophoresis",
      verbPhrase: "sort dna fragments by size",
      description: 'separate DNA fragments by size and visualize results',
      outputs: ["gel bands"]
    });
  }
});