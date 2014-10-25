require.config
  paths:
    jquery: '../../bower_components/jquery/dist/jquery'
    underscore: '../../bower_components/underscore/underscore'
    backbone: '../../bower_components/backbone/backbone'
    jade: '../../bower_components/jade/runtime'
    backbone_relational: '../../bower_components/backbone-relational/backbone-relational'

require ['jquery', 'routers/app', 'collections/boards'], ($, AppRouter, Boards) ->
  $ ->
    boards = new Boards()
    new AppRouter($el: $('[data-js=app]'), boards: boards)
    Backbone.history ||= new Backbone.History({})
    Backbone.history.start()
