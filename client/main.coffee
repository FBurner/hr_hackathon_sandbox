Template.hello.onCreated ->
# counter starts at 0
  @counter = new ReactiveVar(0)
  return
Template.hello.helpers counter: ->
  Template.instance().counter.get()
Template.hello.events 'click button': (event, instance) ->
# increment the counter when button is clicked
  instance.counter.set instance.counter.get() + 1
  return
