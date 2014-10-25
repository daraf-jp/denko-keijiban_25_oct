class Dk.Views.Comments.CommentsView extends Backbone.View
  initialize: (options) ->
    @board = options.board
    @comments = @board.get('comments')
    @renderComments()

  renderComments: ->
    @$el.html template board: @board
    new Dk.Views.Comments.NewView el: $('[data-js=new]'), comments: @comments
    new IndexView el: $('[data-js=index]'), comments: @comments
