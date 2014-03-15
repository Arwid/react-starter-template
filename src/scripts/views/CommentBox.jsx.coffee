`/** @jsx React.DOM */`

CommentList = require("./CommentList.jsx.coffee")
CommentForm = require("./CommentForm.jsx.coffee")

CommentBox = React.createClass
	componentWillMount: ->
		@loadCommentsFromServer()
		# setInterval @loadCommentsFromServer, @props.pollInterval

	loadCommentsFromServer: ->
		@props.comments.fetch()

	render: ->
		`(
			<div className="commentBox">
				<h1>Comments</h1>
				<CommentForm
					comments={this.props.comments}
					/>
				<CommentList comments={this.props.comments} />
			</div>
		)`

module.exports = CommentBox