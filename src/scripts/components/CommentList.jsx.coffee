`/** @jsx React.DOM */`

Comment = require("./Comment.jsx.coffee")

CommentList = React.createClass
	updateState: ->
		@setState comments: _.clone @props.comments.models

	getInitialState: ->
		@props.comments.on 'all', @updateState, this
		comments: @props.comments.models

	render: ->
		commentNodes = _.map @state.comments, (comment) ->
			`<Comment comment={comment} />`
		`(
			<div className="commentList">
				{commentNodes}
			</div>
		)`

module.exports = CommentList