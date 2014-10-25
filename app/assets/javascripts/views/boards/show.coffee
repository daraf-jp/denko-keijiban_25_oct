  class Dk.Views.Boards.ShowView extends Backbone.View
    className: 'list-group-item'
    tagName: 'a'

    events:
      'click [data-js=destroy]' : 'destroy'
      'click [data-js=edit]' : 'edit'
      'click [data-js=done]' : 'done'
      'click [data-js=cancel]' : 'cancel'
      'click [data-js=edit_name]' : 'prevent'

    initialize: (options) ->
      @board = options.board
      @listenTo @board, 'invalid', (model, error) =>
        @$('[data-js=invalid]').text error

    render: ->
      @$el.html templateShow(board: @board)
      @$el.attr 'href', '#' + @board.cid
      @

    destroy: (e) ->
      e.preventDefault()
      e.stopPropagation()

      if window.confirm '本当に削除してよろしいですか？'
        @remove()
        @board.destroy()

    edit: (e) ->
      e.preventDefault()
      e.stopPropagation()

      @$el.html templateEdit(board: @board)

    done: (e) ->
      e.preventDefault()
      e.stopPropagation()

      @board.set name: @$('[data-js=edit_name]').val()

      @$('[data-js=invalid]').val('')
      if @board.isValid()
        @$el.html templateShow(board: @board)

    cancel: (e) ->
      e.preventDefault()
      e.stopPropagation()

      @$el.html templateShow(board: @board)


    prevent: (e) ->
      e.preventDefault()
      e.stopPropagation()
