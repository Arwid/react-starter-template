`/** @jsx React.DOM */`

StarterApp = require("./StarterApp.jsx.coffee")

Router = Backbone.Router.extend
	routes:
		'*default': 'defaultAction'

	defaultAction: ->
		React.renderComponent(`<StarterApp />`, document.getElementById('app'))

module.exports = Router