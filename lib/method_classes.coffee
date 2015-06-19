# use @ClassName pattern to hoist classes to global namespace
class @Kind
  constructor: ({@_id, @name, @root, @parent, others}) ->

  # only false when k1 is not in subgraph of k2
  @isKindOf = (k1, k2) ->
    k1 = Kind.get(k1)
    k2 = Kind.get(k2)
    do recurse = (k1, k2) ->
      switch
        when k1.root isnt k2.root then false
        when k1._id is k2._id then true 
        when k1._id is k1.root then false #got to the top but no match
        else recurse(Kind.get(k1.parent), k2)

  @get: (id) ->
    console.log "---GETTER----"
    k = KindCollection.findOne(id)
    k._id = k.id unless k._id
    console.log "getter k._id? #{k._id}"
    return k


class @Method
  instances = []

  constructor: ({@inputs, @outputs, @inames, @onames, @operator, @description}) ->
    instances.push @

    

  canInput: (tx) ->
    input.iskindOf(output) for input in @inputs for output in tx.outputs

  inputNames: ->
    KindCollection.findOne(input) for input in @inputs

  outputNames: ->
    KindCollection.findOne(output) for output in @outputs

# TODO
class @MChain
  constructor: () ->
