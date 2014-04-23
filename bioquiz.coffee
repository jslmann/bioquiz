# if (Meteor.isClient) {
 
# }

# if (Meteor.isServer) {
#   Meteor.startup(function () {
#     // code to run on server at startup
#   });
# }

if Meteor.isServer
  @QAS = new Meteor.Collection "qa"


if Meteor.isClient
  @QAC = new Meteor.Collection "qa"


# to update the navbar
# should try to do this with router as well
  Template.header.rendered = ->
    # @.findAll('nav li').toggleClass('active')
    t = @
    @.findAll('nav li').on 'click', ->
      # @ changes in function so we use t to refer to template
      console.log "got a click " 
      t.findAll('nav li.active').toggleClass 'active'
      # .siblings(".active").toggleClass 'active'
      $(@).toggleClass 'active'
    @.findAll('nav ')

  Template.options.rendered = ->
    console.log "options template rendered" #+ (new Date().now())

  Template.options.destroyed = ->
    console.log "options template destroyed" #+ (new Date().now())

  Template.addQuestions.events =
      'submit': ->
          q = $('#question').val()
          a = $('#answer').val()
          console.log "button pressed with" + q 
          QAC.insert { 'question': q, 'answer': a}
