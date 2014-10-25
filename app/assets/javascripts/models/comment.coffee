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

  toJSON: ->
    comment:
      name: @get('name')
      content: @get('content')

  validate: (attrs) ->
    if attrs.content.length is 0
      'コメントが未入力です'

  getTime: ->
    date = new Date(Date.parse(@get('created_at')))
    "#{date.getFullYear()}年#{date.getMonth()+1}月#{date.getDate()}日 #{date.getDay()}時#{date.getHours()}分#{date.getMinutes()}秒"

Dk.Models.Comment.setup()
