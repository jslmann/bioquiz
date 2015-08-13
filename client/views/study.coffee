Template.study.qa = ->
	QAC.find()

Template.study.visible = ->


Template.study.events =
		"mouseenter li" : (event) -> 
			$(event.target).find("div.answer").toggleClass("show invisible")

		"mouseleave li" : (event) -> 
			$(event.target).find("div.answer").toggleClass("show invisible")
