# use @ClassName pattern to hoist classes to global namespace
class @Kind
  constructor: ({@_id, @id, @label, @name, @root, @parent, @color}) ->
    @id = @_id # in case constructor init from db query result
    @name = @label #convenience format
    delete this._id
    delete this.label

    @color = Kind.get(@parent)?.color unless @color?


  # only false when k1 is not in subgraph of k2
  @isKindOf = (k1, k2) ->
    k1 = Kind.get(k1)
    k2 = Kind.get(k2)
    console.log "is #{k1.name} a kind of #{k2.name}?"
    console.log do recurse = (k1, k2) ->
      switch
        when k1.root isnt k2.root then false
        when k1.id is k2.id then true
        when k1.id is k1.root then false #got to the top but no match
        else recurse(Kind.get(k1.parent), k2)

  @get: (id) ->
    KindCollection.findOne(id)



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
