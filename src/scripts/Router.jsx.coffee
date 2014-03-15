`/** @jsx React.DOM */`

CommentPage = require("./views/CommentPage.jsx.coffee")
Comments = require("./models/Comments.js.coffee")

class Router extends Backbone.Router
	routes:
		'*default': 'commentPage'

	commentPage: ->
		comments = new Comments()
		React.renderComponent(`<CommentPage comments={comments} />`, document.getElementById('app'))

module.exports = Router