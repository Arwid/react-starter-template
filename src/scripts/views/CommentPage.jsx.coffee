`/** @jsx React.DOM */`

Masthead = require("./Masthead.jsx.coffee")
CommentBox = require("./CommentBox.jsx.coffee")

ReactTransitionGroup = React.addons.TransitionGroup
imageURL = "/images/BladeRunner.gif"

CommentPage = React.createClass
  render: () ->
    `(
      <div className='main'>
        <Masthead title="React Comment Box">
          This is from the React tutorial on <a href="http://facebook.github.io/react/docs/tutorial.html">http://facebook.github.io/react/docs/tutorial.html</a>
        </Masthead>
        <div className="container">
          <CommentBox comments={this.props.comments} pollInterval={2000} />
        </div>
      </div>
    )`

module.exports = CommentPage
