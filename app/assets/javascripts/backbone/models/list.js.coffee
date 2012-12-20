class SplitTask.Models.List extends Backbone.Model
  paramRoot: 'list'

  defaults:
    name: 'Untitled'

class SplitTask.Collections.ListsCollection extends Backbone.Collection
  model: SplitTask.Models.List
  url: '/list'
