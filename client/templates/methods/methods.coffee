Template.methods.helpers
  methods: ->
    doc for doc in MethodCollection.find({}).fetch()

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
    match = 0
    if outMeth isnt ''
      for o in outMeth.outputs
        for i in inMeth.inputs
          if Kind.isKindOf(o, i)
            match++
    if match >= outMeth.outputs?.length?
      return ""
    else
      return 'disabled-method'

  isSelectedMethod: (meth) ->
    if Session.get("selectedMethod")?._id is this._id
      return 'selected-method'

Template.methods.events
  'click .method': (e) ->
    if Session.get("selectedMethod")?._id is this._id
      Session.set("selectedMethod", '')
    else
      Session.set "selectedMethod", this
    console.log this


