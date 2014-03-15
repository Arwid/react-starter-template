`/** @jsx React.DOM */`

converter = new Showdown.converter()

Comment = React.createClass
	mixins: [BackboneMixin]

	getBackboneModels: ->
		[@props.comment]

	render: ->
		rawMarkup = converter.makeHtml @props.comment.get("text")
		`(
			<div className="comment">
				<h2 className="commentAuthor">
					{this.props.comment.get("author")}
				</h2>
				<span dangerouslySetInnerHTML={{__html: rawMarkup}} />
			</div>
		)`

module.exports = Comment