class Method
  instances = []

  constructor: (@_id, @inputs, @outputs, @operator, @description) ->
    instances.push @

  canInput (tx) ->
    input.iskindOf(output) for input in @inputs for output in tx.outputs


class Kind
  constructor: (@_id, @name, @root, @parent, @children)

  isKindOf (sup) ->
    # is sup anwhere between here and the root?
    # implicit true/false return
    @_id is sup._id or @parent?.isKindOf(sup) 


# TODO
class MChain
  constructor: () ->

Meteor.call 'resetdb' unless MethodCollection.find().count()
new Method doc for doc in MethodCollection.find().fetch()





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