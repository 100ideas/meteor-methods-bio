# need @ to hoist coffeescript vars to global scope
@MethodCollection = new Mongo.Collection 'methods'
@KindCollection = new Mongo.Collection 'kinds'