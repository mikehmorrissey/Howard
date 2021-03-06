@Howard = do (Backbone, Marionette) ->

  App = new Marionette.Application

  App.addRegions
    navRegion: '#nav'
    mainRegion: "#main"
    sidePaneRegion: '#side-pane'

  App.addInitializer ->
    App.module('Nav').start()

  App.on 'before:start', (options) ->
    App.environment = options.environment

  App.on "start", (options) ->
    if Backbone.history
      Backbone.history.start({pushState: true})

  App