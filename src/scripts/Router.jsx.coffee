`/** @jsx React.DOM */`

CommentPage = require("./views/CommentPage.jsx.coffee")
Comments = require("./models/Comments.js.coffee")

class Router extends Backbone.Router
	routes:
		'*default': 'commentPage'

	commentPage: ->
		comments = new Comments([
		  {author: "Pete Hunt", text: "This is one comment"},
		  {author: "Jordan Walke", text: "This is *another* comment"}
		])
		React.renderComponent(`<CommentPage comments={comments} />`, document.getElementById('app'))

module.exports = Router