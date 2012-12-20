#= require_self
#= require_tree ./templates
#= require_tree ./models
#= require_tree ./views
#= require_tree ./routers

window.SplitTask =
  Models: {}
  Collections: {}
  Routers: {}
  Views: {}
  Utils: {}

  ###-----------------------------------

    Structure Reference:

    Models/Collections: (Lists, Tasks)
    Views:
      Single Task View (Main)
      List
       -> Task
      Lists (Manage All Lists)
    Routers:
      Main
      List
      Settings
    Utils:
      Dropdown menu
  ------------------------------------###

  test: ->
    lists = new SplitTask.Collections.ListsCollection()
    lists.fetch()
    return lists
