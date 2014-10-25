class Dk.Views.Comments.CommentsView extends Backbone.View
  template: JST['comments/comments']

  initialize: (options) ->
    @board = options.board
    @comments = @board.get('comments')
    @renderComments()

  renderComments: ->
    @$el.html @template board: @board
    new Dk.Views.Comments.NewView el: $('[data-js=new]'), comments: @comments
    new Dk.Views.Comments.IndexView el: $('[data-js=index]'), comments: @comments
