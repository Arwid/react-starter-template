`/** @jsx React.DOM */`

CommentList = require("./CommentList.jsx.coffee")
CommentForm = require("./CommentForm.jsx.coffee")

CommentBox = React.createClass
	componentWillMount: ->
		@loadCommentsFromServer()
		setInterval @loadCommentsFromServer, @props.pollInterval

	handleCommentSubmit: (comment) ->
		@props.comments.create comment

	loadCommentsFromServer: ->
		# TODO: fetch from server

	render: ->
		`(
			<div className="commentBox">
				<h1>Comments</h1>
				<CommentForm
					comments={this.props.comments}
					onCommentSubmit={this.handleCommentSubmit}
					/>
				<CommentList comments={this.props.comments} />
			</div>
		)`

module.exports = CommentBox