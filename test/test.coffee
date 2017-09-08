startTime = Date.now()
require '../'

setInterval ()->
	console.log "#{Date.now() - startTime}ms passed"
, 1e3