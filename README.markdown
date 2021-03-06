# Methods.bio

Exploration of a simple tag-based pseudo-taxonomy of key input/output terms for biological protocols.


Details:

Idealized Input/Output "type checking" demo of molecular biology methods. Uses  a simple taxonomy key conceptual material "types" (far-right column).

Each card <em>functionally defines the key conceptual inputs and outputs for each method. Input terms are in the top bar, outputs in the bottom. Clicking on a method card will turn its input bar. Cards incompatible with the clicked card's outputs will turn red; compatible methods will remain gray.

Initialize the protocol cards by clicking *config>reset db* in the upper right - this loads the IO term taxonomy and protocol metadata from the (poorly-named) ontology.coffee JSON file <a href="https://github.com/100ideas/meteor-methods-bio/blob/master/lib/ontology.coffee"></a>.

The "constraint solver" / type checker is a total hack. If it is not acting logically, click <em>config>reset meth0d logic</em> to help it out.

links
-----

###Graphs & trees
- https://github.com/alexmingoia/hyperobject
- https://atmospherejs.com/ostrio/neo4jreactivity
- https://mbraak.github.io/jqTree/#tree-options
- http://jnuno.com/tree-model-js/
- https://github.com/afiore/arboreal
- http://quasipartikel.at/data-js/


###Viz & UI
- https://github.com/cryptoquick/cubes/
- https://wit.ai/docs/http/20141022#get-message-link
- https://github.com/wit-ai/node-app-demo/blob/master/index.js

###PDFs
- https://atmospherejs.com/pascoual/pdfkit
- http://mrrio.github.io/jsPDF/doc/symbols/jsPDF.html#rect
- http://stackoverflow.com/questions/23104008/where-to-change-default-pdf-page-width-and-font-size-in-jspdf-debug-js
- https://github.com/MrRio/jsPDF/blob/ddbfc0f0250ca908f8061a72fa057116b7613e78/jspdf.js#L59
- https://parall.ax/products/jspdf
- https://github.com/alanshaw/markdown-pdf
- https://github.com/tojocky/node-printer
- http://hublog.hubmed.org/archives/001978.html

###JS, semantic, and flow-programming resources
- http://eloquentjavascript.net/14_event.htm
- http://scriptogr.am/alfredo/post/documenting-components
- http://www.natpryce.com/articles/000779.html
- https://github.com/noflo/noflo-ui
- https://github.com/flowbased/thinking-flowbased
- http://rawkes.com/articles/an-introduction-to-noflo-and-flow-based-programming
- http://cs.union.edu/~striegnk/courses/nlp-with-prolog/html/node61.html#l8.sec.motivation
- [Chart Parsing google search](https://encrypted.google.com/search?hl=en&q=active%20ontologies%20chart%20parsing)
- [ChartParsing.pdf Doug Arnold](http://webdocs.cs.ualberta.ca/~lindek/650/papers/chartParsing.pdf)

###Other semantic protocol projects etc:
- http://www.qudt.org
- http://www.antha-lang.org
- http://autoprotocol.org/specification/
- https://www.protocols.io/
- https://www.scientificprotocols.org
- https://www.scientificprotocols.org/protocols/transformation-of-plasmid-dna-to-competent-e-coli-cells
http://www.molmeth.org/protocol/protocol-collection-biological-material-dna-analysis
- https://www.biosharing.org/search/?q=method
- https://forum.arcturus.io/t/open-source-bioserver/17
- http://www.commons.camp/bio-commons-lab/

###Want
- http://automata.cc/drawbot
- http://mirobot.io/build/fabricate/
