# need @ to hoist coffeescript vars to global scope
@MethodCollection = new Mongo.Collection 'methods'
@TypeCollection = new Mongo.Collection 'types'