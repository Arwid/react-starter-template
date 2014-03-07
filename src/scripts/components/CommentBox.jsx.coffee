`/** @jsx React.DOM */`

CommentList = require("./CommentList.jsx.coffee")
CommentForm = require("./CommentForm.jsx.coffee")

CommentBox = React.createClass

	getInitialState: ->
		data:  @props.data

	handleCommentSubmit: (comment) ->
		comments = @state.data
		newComments = comments.concat [comment]
		@setState data: newComments
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
				<CommentList data={this.state.data} />
			</div>
		)`

module.exports = CommentBox