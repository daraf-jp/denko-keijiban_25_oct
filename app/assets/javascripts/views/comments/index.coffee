class Dk.Views.Comments.IndexView extends Backbone.View
  initialize: (options) ->
    @comments = options.comments
    @comments.on 'add', (comment) => @renderComment(comment)

    @renderComments()

  renderComments: ->
    @comments.each (comment) => @renderComment(comment)

  renderComment: (comment) ->
    showView = new ShowView({comment: comment})
    @$el.append showView.render().el
