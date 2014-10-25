class Dk.Views.Boards.BoardsView extends Backbone.View
  template: JST['boards/boards']

  initialize: (options) ->
    @boards = options.boards
    @renderBoards()

  renderBoards: ->
    @$el.html @template()
    new Dk.Views.Boards.NewView(el: @$('[data-js=new]'), boards: @boards)
    new IndexView(el: @$('[data-js=index]'), boards: @boards)
