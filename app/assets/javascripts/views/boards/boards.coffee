define ['jquery', 'backbone', 'templates/boards/boards', 'views/boards/new', 'views/boards/index'], ($, Backbone, template, NewView, IndexView) ->
  class BoardsView extends Backbone.View
    initialize: (options) ->
      @boards = options.boards
      @renderBoards()

    renderBoards: ->
      @$el.html template()
      new NewView(el: @$('[data-js=new]'), boards: @boards)
      new IndexView(el: @$('[data-js=index]'), boards: @boards)
