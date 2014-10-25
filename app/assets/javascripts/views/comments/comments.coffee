define ['jquery', 'backbone', 'templates/comments/comments', 'views/comments/new', 'views/comments/index'], ($, Backbone, template, NewView, IndexView) ->
  class CommentsView extends Backbone.View
    initialize: (options) ->
      @board = options.board
      @comments = @board.get('comments')
      @renderComments()

    renderComments: ->
      @$el.html template board: @board
      new NewView el: $('[data-js=new]'), comments: @comments
      new IndexView el: $('[data-js=index]'), comments: @comments
