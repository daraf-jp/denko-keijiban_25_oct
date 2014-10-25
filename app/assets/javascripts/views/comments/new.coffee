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

    date = new Date(Date.now())
    comment.set
      board_id: @board.id
      name: @$('[data-js=new_name]').val()
      content: @$('[data-js=new_content]').val()
      created_at: "#{date.getFullYear()}年#{date.getMonth()+1}月#{date.getDate()}日 #{date.getDay()}時#{date.getHours()}分#{date.getMinutes()}秒"

    @$('[data-js=invalid]').empty()
    if comment.isValid()
      @$('[data-js=new_name]').val('名無し')
      @$('[data-js=new_content]').val('')

      @comments.add comment
