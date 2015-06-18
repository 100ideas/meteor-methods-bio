# use @ClassName pattern to hoist classes to global namespace
class @Kind
  constructor: ({@name, @root, @parent}) ->

  isKindOf: (sup) ->
    # is sup anwhere between here and the root?
    # implicit true/false return
    @_id is sup._id or @parent?.isKindOf(sup)

  getKindByID: (_id) ->
    KindCollection.findOne({id: _id},{fields: _id})


class @Method
  instances = []

  constructor: (@id, @inputs, @outputs, @operator, @description) ->
    instances.push @

  # constructor: ({data}) ->
  #   instances.push @
    
  #   console.log "Method constructor data, then collection.find: "
  #   console.log data
  #   console.log(MethodCollection.findOne data.id)
    

  canInput: (tx) ->
    input.iskindOf(output) for input in @inputs for output in tx.outputs

  inputNames: ->
    KindCollection.findOne(input) for input in @inputs

  outputNames: ->
    KindCollection.findOne(output) for output in @outputs

# TODO
class @MChain
  constructor: () ->

# Meteor.call 'resetdb' unless MethodCollection.find({}).count() or KindCollection.find({}).count()
# new Method (doc) for doc in MethodCollection.find({}).fetch()

                







# class Views
#   constructor: ->
#     @pages = {}
#   increment: (key) ->
#     @pages[key] ?= 0
#     @pages[key] = @pages[key] + 1
#   total: ->
#     sum = 0
#     for own url, count of @pages
#       sum = sum + count
#     sum