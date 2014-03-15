`/** @jsx React.DOM */`

CommentList = require("./CommentList.jsx.coffee")
CommentForm = require("./CommentForm.jsx.coffee")

CommentBox = React.createClass
	handleCommentSubmit: (comment) ->
		@props.comments.add comment
		# TODO: submit to the server

	componentWillMount: ->
		@loadCommentsFromServer()
		setInterval @loadCommentsFromServer, @props.pollInterval

	loadCommentsFromServer: ->
		# TODO: fetch from server

	render: ->
		`(
			<div className="commentBox">
				<h1>Comments</h1>
				<CommentForm
					onCommentSubmit={this.handleCommentSubmit}
					/>
				<CommentList comments={this.props.comments} />
			</div>
		)`

module.exports = CommentBox