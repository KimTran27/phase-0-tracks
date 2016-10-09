// create a function with one parameter
function sayHello(string){
// set the empty string named new_string
	new_string = ""
	// use loop to prepend the each letter of the string to new_str
	// repeat this until the loop hits the last letter of the string
	for (i = 0 ; i < string.length ; i++){
		new_string = string[i] + new_string
	}

	return new_string
}

if (true) {
	console.log(sayHello("hello"));	
}
else {
	console.log(sayHello("goodbye"));
}