class Dk.Models.Board extends Backbone.RelationalModel
  relations: [{
    type: Backbone.HasMany
    key: 'comments'
    relatedModel: 'Dk.Models.Comment'
    collectionType: 'Dk.Collections.Comments'
    reverseRelation:
      key: 'board'
      includeInJSON: true
  }]

  urlRoot: '/boards/'

  defaults:
    name: ''

  validate: (attrs) ->
    if attrs.name.length is 0
      '掲示板名が未入力です'

  toJSON: ->
    board:
      name: @get('name')

Dk.Models.Board.setup()
