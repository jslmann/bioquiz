Template.options.rendered = ->
	console.log "options template rendered" #+ (new Date().now())

Template.options.destroyed = ->
	console.log "options template destroyed" #+ (new Date().now())
