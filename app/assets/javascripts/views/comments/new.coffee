class Dk.Views.Comments.NewView extends Backbone.View
  events:
    'submit' : 'submit'

  initialize: (options) ->
    @board = options.board
    @comments = @board.get('comments')

  submit: (e) ->
    e.preventDefault()
    e.stopPropagation()

    comment = new Dk.Models.Comment()
    @listenTo comment, 'invalid', (model, error) =>
      @$('[data-js=invalid]').text error

    comment.set
      board_id: @board.id
      name: @$('[data-js=new_name]').val()
      content: @$('[data-js=new_content]').val()

    @$('[data-js=invalid]').empty()
    comment.save {},
      success: =>
        @$('[data-js=new_name]').val('名無し')
        @$('[data-js=new_content]').val('')

        @comments.add comment
