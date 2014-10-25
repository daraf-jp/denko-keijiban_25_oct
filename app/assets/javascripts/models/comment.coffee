define ['jquery', 'backbone', 'backbone_relational'], ($, Backbone) ->
  class Comment extends Backbone.RelationalModel
    defaults:
      name: '名無し'
      content: ''
      created_at: ''

    validate: (attrs) ->
      if attrs.content.length is 0
        'コメントが未入力です'

  Comment.setup()
