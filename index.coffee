term = require('terminal-kit').terminal
count = 0

setInterval ()->
	console.log 'count',require('chalk').red(count)
,2500
term.grabInput()
term.on 'key', (name,matches,data)->
	if name is 'CTRL_C'
		# process.exit()
		;
	else
		if name is 'CTRL_U'
			console.log 'pressed CTRL_U'
			count++
			term.grabInput(false)
# term.on 'CTRL_I', ()-> console.log 'CTRL_I!'; count++
# term.on 'CTRL_F', ()-> console.log 'CTRL_F!'; count++
# term.on 'T', ()-> console.log 'T!'; count++

