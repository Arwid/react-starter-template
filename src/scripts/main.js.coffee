`/** @jsx React.DOM */`

# Bring in jQuery and React as a Bower component in the global namespace
require("script!react/react-with-addons.js")
require("script!jquery/jquery.js")
require("script!showdown/compressed/showdown.js")
require("script!lodash/dist/lodash.js")
require("script!backbone/backbone.js")
require("script!backbone.localStorage/backbone.localStorage.js")
require("./BackboneMixin.js.coffee")

App = require("./App.js.coffee")
Router = require("./Router.jsx.coffee")

App.router = new Router()
App.run()