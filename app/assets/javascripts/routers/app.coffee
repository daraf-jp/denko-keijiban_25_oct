class Dk.Routers.AppRouter extends Backbone.Router
  routes:
    ':cid' : 'renderComments'
    ''    : 'renderBoards'

  initialize: (options) ->
    @$el = options.$el
    @boards = options.boards
    location.assign '#'
    @renderBoards()

  renderBoards: ->
    new Dk.Views.Boards.BoardsView el: @$el, boards: @boards

  renderComments: (id) ->
    board = @boards.get(id)
    if board?
      new CommentsView el: @$el, board: board
    else
      location.assign '#'
