class Dk.Views.Boards.NewView extends Backbone.View
  events:
    'submit' : 'submit'

  initialize: (options) ->
    @boards = options.boards

  submit: (e) ->
    e.stopPropagation()
    e.preventDefault()

    board = new Dk.Models.Board()
    @listenTo board, 'invalid', (model, error) =>
      @$('[data-js=invalid]').text error

    board.set name: @$('[data-js=new_name]').val()
    @$('[data-js=new_name]').val('')

    @$('[data-js=invalid]').empty()
    board.save {},
      success: (b) =>
        @boards.add board
