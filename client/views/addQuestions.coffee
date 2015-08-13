Template.addQuestions.events =
  'submit': ->
      q = $('#question').val()
      a = $('#answer').val()
      console.log "button pressed with" + q 
      QAC.insert { 'question': q, 'answer': a, 'author': Meteor.users.findOne()._id}
