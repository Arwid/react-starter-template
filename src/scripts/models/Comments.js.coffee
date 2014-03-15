class Comment extends Backbone.Model

class Comments extends Backbone.Collection
	model: Comment
	localStorage: new Store('comments')

module.exports = Comments