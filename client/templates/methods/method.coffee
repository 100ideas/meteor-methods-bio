Template.methodCards.helpers
  methods: ->
    doc for doc in MethodCollection.find({}).fetch();

  getcolor: (kindname) ->
    console.log kindname
    k = KindCollection.findOne({name: kindname})
    k = KindCollection.findOne(k.root)
    if k?.color?
      return k.color
    else
      return "error"

  validMethod: (inMeth) ->
    outMeth = Session.get "selectedMethod"
    if outMeth
      for o in outMeth.outputs
        for i in inMeth.inputs
          if !Kind.isKindOf(o, i)
            return 'disabled'
    return ""

Template.methodCards.events
  'click .method': (e) ->
    if Session.get("selectedMethod") is this
      Session.set("selectedMethod", "")  
    else
      Session.set "selectedMethod", this
    console.log this


