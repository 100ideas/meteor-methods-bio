Template.methodCards.helpers
  methods: ->
    new Method (doc) for doc in MethodCollection.find({}).fetch();