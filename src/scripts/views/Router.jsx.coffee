`/** @jsx React.DOM */`

StarterApp = require("./StarterApp.jsx.coffee")

Router = Backbone.Router.extend
	routes:
		'*default': 'defaultAction'

	defaultAction: ->
		comments = new Backbone.Collection([
		  {author: "Pete Hunt", text: "This is one comment"},
		  {author: "Jordan Walke", text: "This is *another* comment"}
		])
		React.renderComponent(`<StarterApp comments={comments} />`, document.getElementById('app'))

module.exports = Router