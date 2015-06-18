class Method
  constructor: (@_id, @inputs, @outputs, @operator, @description) ->
  
  canInput (tx) ->
    input.iskindOf(output) for input in @inputs for output in tx.outputs


class Kind
  constructor: (@_id, @name, @root, @parent, @children)

  # is sup anwhere between here and the root?
  # implicit true/false return
  isKindOf (sup) ->
    @_id is sup._id or @parent?.isKindOf(sup) 


class MChain



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