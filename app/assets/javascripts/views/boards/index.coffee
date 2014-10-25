class Dk.Views.Boards.IndexView extends Backbone.View
  initialize: (options) ->
    @boards = options.boards
    @boards.each (board) =>
      @renderBoard(board)

    @listenTo @boards, 'add', (board) =>
      @renderBoard(board)

  renderBoard: (board) ->
    view = new Dk.Views.Boards.ShowView(board: board)
    @$el.append view.render().el
