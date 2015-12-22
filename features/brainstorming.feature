Feature: organize notes on methods ontology & graph search

  Each method has
    - inputs: set of MO terms
    - intent: informal, functional description of method (verb-phrase?)
    - outputs: set of MO terms
    - promise: asserts what success state is using promise ontology on output terms

  The method ontology is
    - a hierarchical set of nouns
      - conceptual, generic terms for representing method i/o
      - not intended to map 1-to-1 to protocol i/o
      - represents sparsest valid graph of protocol chains
    - a set of verbs
      - each method intent has one
      - there is one canonical form
      - 0-many synonyms

  The promise ontology is
    - a set of physical units - concentration?, mass, volume, time
    - interval relation - between? probability distribution?
    - Q. does the interval relation capture success liklihood, or need a separate term?

    ### more musing
    - A Method describes the “functional” or “abstract” or “conceptual” qualities of one of these procedures and is terse and declarative.
    - A Protocol is a specific implementation of a Method and is verbose and imperative. 
    - A variety of protocols may implement the same method, albeit with different physical steps
    - Methods contain references to the Protocols that implement them
    - Methods represent their function by specifying their input and output using terms from a controlled vocabulary, with terms such as “dna”, “rna”, 


    LEAP
    - Worlds premeier open, online repository for scientific protocols
    - facilitated experimental design for novices
    - and powerful enough for managing complex industrial workflows
    - designed to support digital protocol services and products

  TODO
    - research drag-n-drop stack ux approaches
    - edit view for methods
    - protocol view for methods