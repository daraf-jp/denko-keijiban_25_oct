class Dk.Models.Comment extends Backbone.RelationalModel
  urlRoot: ->
    board = @get('board')
    if board?
      "/boards/#{board.id}/comments"
    else
      "boards/#{@get('board_id')}/comments"

  defaults:
    name: '名無し'
    content: ''
    created_at: ''

  validate: (attrs) ->
    if attrs.content.length is 0
      'コメントが未入力です'

Dk.Models.Comment.setup()
