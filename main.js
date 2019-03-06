if (!('WebAssembly' in window)) {
	var msg = 'WebAssembly not supported';
	alert(msg);
	console.error(msg);
}
function loadWebAssembly(filename, imports) {
	return fetch(filename)
		.then(response => response.arrayBuffer())
		.then(buffer => WebAssembly.compile(buffer))
		.then(module => {
			imports = imports || {};
			imports.env = imports.env || {};
			if (!imports.env.memory) {
				// Setup our Memory import, initializing it
				// to use 256 pages of memory.
				imports.env.memory = new WebAssembly.Memory({ initial: 256 });
			}

			// Create a WebAssembly instance with our compiled
			// module and pass in our import object
			return new WebAssembly.Instance(module, imports);
		});
}
let i = {};
// Call our load function.
loadWebAssembly('/main.wasm', i).then(instance => {
	// Grab our exports and call our main function

	var exports = instance.exports;
	window.mat4 = {};

});

function square(a) {
	return a * a;
}

function test() {
	var start = Date.now();
}