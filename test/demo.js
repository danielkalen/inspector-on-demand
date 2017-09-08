var startTime = Date.now();
require('inspector-on-demand');

setInterval(function(){
	console.log(`${Date.now() - startTime}ms passed`);
}, 1000);
