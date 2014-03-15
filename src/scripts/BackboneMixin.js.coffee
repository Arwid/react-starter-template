###
An example generic Mixin that you can add to any component that should react
to changes in a Backbone component. The use cases we've identified thus far
are for Collections -- since they trigger a change event whenever any of
their constituent items are changed there's no need to reconcile for regular
models. One caveat: this relies on getBackboneModels() to always return the
same model instances throughout the lifecycle of the component. If you're
using this mixin correctly (it should be near the top of your component
hierarchy) this should not be an issue.
###

BackboneMixin =
  componentDidMount: ->
    # Whenever there may be a change in the Backbone data, trigger a reconcile.
    @getBackboneModels?().forEach (model) ->
      model.on 'add change remove', @forceUpdate.bind(this, null), this
    , this

  componentWillUnmount: ->
    # Ensure that we clean up any dangling references when the component is
    # destroyed.
    @getBackboneModels?().forEach (model) ->
      model.off(null, null, this)
    , this

# Expose
window.BackboneMixin = BackboneMixin