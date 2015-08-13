Meteor.publish 'qa', ->
  return QAS.find()
