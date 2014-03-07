`/** @jsx React.DOM */`

CommentList = require("./CommentList.jsx.coffee")
CommentForm = require("./CommentForm.jsx.coffee")

CommentBox = React.createClass
	render: ->
		`(
			<div className="commentBox">
				<h1>Comments</h1>
				<CommentList />
				<CommentForm />
			</div>
		)`

module.exports = CommentBox