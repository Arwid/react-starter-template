`/** @jsx React.DOM */`

CommentForm = React.createClass
	resetForm: ->
		@refs.author.getDOMNode().value = ''
		@refs.text.getDOMNode().value = ''

	handleSubmit: ->
		author = @refs.author.getDOMNode().value.trim()
		text = @refs.text.getDOMNode().value.trim()
		@props.onCommentSubmit {author: author, text: text}
		@resetForm()
		false

	render: ->
		`(
			<form className="commentForm group" onSubmit={this.handleSubmit}>
				<input type="text" placeholder="Your name" ref="author" />
				<textarea
					placeholder="Add comment..."
					ref="text"
					></textarea>
				<input type="submit" value="Comment" />
			</form>
		)`

module.exports = CommentForm