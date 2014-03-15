`/** @jsx React.DOM */`

CommentPage = require("./views/CommentPage.jsx.coffee")

class Router extends Backbone.Router
	routes:
		'*default': 'commentPage'

	commentPage: ->
		comments = new Backbone.Collection([
		  {author: "Pete Hunt", text: "This is one comment"},
		  {author: "Jordan Walke", text: "This is *another* comment"}
		])
		React.renderComponent(`<CommentPage comments={comments} />`, document.getElementById('app'))

module.exports = Router