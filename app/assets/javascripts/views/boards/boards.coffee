class Dk.Views.Boards.BoardsView extends Backbone.View
  initialize: (options) ->
    @boards = options.boards
    @renderBoards()

  renderBoards: ->
    @$el.html template()
    new NewView(el: @$('[data-js=new]'), boards: @boards)
    new IndexView(el: @$('[data-js=index]'), boards: @boards)
