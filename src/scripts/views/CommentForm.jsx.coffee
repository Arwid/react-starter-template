`/** @jsx React.DOM */`

CommentForm = React.createClass
	resetForm: ->
		@refs.author.getDOMNode().value = ''
		@refs.text.getDOMNode().value = ''

	handleSubmit: ->
		@props.comments.create 
			author: @refs.author.getDOMNode().value.trim()
			text: @refs.text.getDOMNode().value.trim()
		@resetForm()
		false

	render: ->
		`(
			<form className="commentForm group" onSubmit={this.handleSubmit}>
				<input name="author" type="text" placeholder="Your name" ref="author" />
				<textarea
					name="text"
					placeholder="Add comment..."
					ref="text"
					></textarea>
				<input type="submit" value="Comment" />
			</form>
		)`

module.exports = CommentForm