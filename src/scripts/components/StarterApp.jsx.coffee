`/** @jsx React.DOM */`

Masthead = require("./Masthead.jsx.coffee")
CommentBox = require("./CommentBox.jsx.coffee")

ReactTransitionGroup = React.addons.TransitionGroup
imageURL = "/images/BladeRunner.gif"

data = [
  {author: "Pete Hunt", text: "This is one comment"},
  {author: "Jordan Walke", text: "This is *another* comment"}
]

StarterApp = React.createClass
  render: () ->
    `(
      <div className='main'>
        <Masthead title="React Comment Box">
          This is from the React tutorial on <a href="http://facebook.github.io/react/docs/tutorial.html">http://facebook.github.io/react/docs/tutorial.html</a>
        </Masthead>
        <div className="container">
          <CommentBox data={data} pollInterval={2000} />
        </div>
      </div>
    )`

module.exports = StarterApp
