`/** @jsx React.DOM */`

Comment = require("./Comment.jsx.coffee")

CommentList = React.createClass
	mixins: [BackboneMixin]

	getBackboneModels: ->
		[@props.comments]

	render: ->
		commentNodes = @props.comments.map (comment) ->
			`<Comment comment={comment} />`
		`(
			<div className="commentList">
				{commentNodes}
			</div>
		)`

module.exports = CommentList