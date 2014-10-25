define ['jquery', 'backbone', 'templates/comments/show'], ($, Backbone, template) ->
  class ShowView extends Backbone.View
    className: 'media'

    initialize: (options) ->
      @comment = options.comment

    render: ->
      @$el.html template comment: @comment
      @
