`/** @jsx React.DOM */`

converter = new Showdown.converter()

Comment = React.createClass
	updateState: (model) ->
		@setState comment: _.clone model.attributes

	getInitialState: ->
		@props.comment.on 'change', @updateState, this
		comment: _.clone @props.comment.attributes

	render: ->
		rawMarkup = converter.makeHtml @state.comment.text
		`(
			<div className="comment">
				<h2 className="commentAuthor">
					{this.state.comment.author}
				</h2>
				<span dangerouslySetInnerHTML={{__html: rawMarkup}} />
			</div>
		)`

module.exports = Comment