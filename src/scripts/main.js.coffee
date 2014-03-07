`/** @jsx React.DOM */`

# Bring in jQuery and React as a Bower component in the global namespace
require("script!react/react-with-addons.js")
require("script!jquery/jquery.js")

StarterApp = require("./components/StarterApp.jsx.coffee")
CommentBox = require("./components/CommentBox.jsx.coffee")

# React.renderComponent(`<StarterApp />`, document.getElementById('app'))
React.renderComponent(`<CommentBox />`, document.getElementById('app'))

