Comment = require("./Comment.js.coffee")

class Comments extends Backbone.Collection
	model: Comment
	localStorage: new Store('comments')

module.exports = Comments