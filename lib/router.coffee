Router.configure
		layoutTemplate: 'layout'


Router.map -> 
		this.route 'home',
				path : '/',
				data : { 
					sectionTitle: "Welcome to Neurology!"
				}
	
		this.route 'study', 
				template: 'study',
				data: 
						sectionTitle: "Study Questions" 
				# data: { 
				# 	eventThang: ->
				# 		TSE.find({jdate: {$lt: new Date()}}sort:{jdate: -1})
				# 	
				# 	sectionTitle: "Past Events" 
				# }

		this.route 'test', 
				template: 'test',
				data:
						sectionTitle: "Test"
				# data: { 
				# 	eventThang: ->
				# 		TSE.find({jdate: {$gt: new Date() }}sort:{jdate: 1})
				# 	 
				# 	sectionTitle: "Upcoming Events"
				# }
		this.route 'addQuestions', 
				template: 'addQuestions'
				data: { 
					sectionTitle: "Add a Question!"
				}
		this.route 'options',
				template: 'options'
				data: { 
					sectionTitle: "Options"
				}
		this.route 'contact', 
				template: 'contact'
				data: { 
					sectionTitle: "Contact"
				}

