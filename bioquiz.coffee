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
    # @.findAll('nav ')


  