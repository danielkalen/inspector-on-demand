nodeVersion = parseFloat process.version.slice(1)
supportsInspector = nodeVersion >= 8
port = process.env.INSPECTOR_PORT
host = process.env.INSPECTOR_HOST

if supportsInspector
	term = require('terminal-kit').terminal
	term.grabInput(true)
	inspector = require 'inspector'
	
	term.on 'key', (key)->
		inspectorURL = inspector.url()
		switch
			when key is 'CTRL_C'
				term.processExit()
			
			when (key is 'CTRL_Y' or key is 'CTRL_U') and inspectorURL
				term.dim inspectorURL+'\n'
			
			when key is 'CTRL_Y'
				inspector.open(port, host, false)
			
			when key is 'CTRL_U'
				inspector.open(port, host, true)
			
			when key is 'CTRL_X' and inspectorURL
				term.dim 'deactivating inspector\n'
				inspector.close()
				term.grabInput(false)


else if process.env.INSPECTOR_SUPPORT
	console.warn "
		inspector-on-demand is unsupported by your verison of node
		(requires >=v8.0.0; current #{process.verison})
	"







