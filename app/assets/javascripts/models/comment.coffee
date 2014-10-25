class Dk.Models.Comment extends Backbone.RelationalModel
  defaults:
    name: '名無し'
    content: ''
    created_at: ''

  validate: (attrs) ->
    if attrs.content.length is 0
      'コメントが未入力です'

Dk.Models.Comment.setup()
