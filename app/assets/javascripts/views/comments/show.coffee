  class Dk.Views.Comments.ShowView extends Backbone.View
    className: 'media'

    initialize: (options) ->
      @comment = options.comment

    render: ->
      @$el.html template comment: @comment
      @
