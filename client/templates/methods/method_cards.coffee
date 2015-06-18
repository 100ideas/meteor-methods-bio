Template.methodCards.helpers
  methods: ->
    doc for doc in MethodCollection.find({}).fetch();
