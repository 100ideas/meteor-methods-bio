Template.methodCards.helpers
  methods: ->
    doc for doc in MethodCollection.find({}).fetch();
    # ms.push( for doc in MethodCollection.find({}).fetch()
    #   console.log "Template.method to find Method"
    #   console.log doc
    #   new Method {data: doc}
    # )
    # console.log k for k in ms