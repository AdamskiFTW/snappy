#= require_tree ./vendor/
#= require_tree ./helpers/
#= require_tree ./components/

$ ->
  App.init()

App.init = ->
  App.foundation()
  App.example()