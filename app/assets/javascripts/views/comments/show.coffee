class Dk.Views.Comments.ShowView extends Backbone.View
  template: JST['comments/show']

  className: 'media'

  initialize: (options) ->
    @comment = options.comment

  render: ->
    @$el.html @template comment: @comment
    @
