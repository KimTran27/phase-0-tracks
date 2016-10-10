// create a function with one parameter ("string")
// Decrementing while-loop with concatenation and substring

function reverse(s) {
  var i = s.length,
      o = '';
  while (i > 0) {
    o += s.substring(i - 1, i);
    i--;
  }
  return o;
}

if (true) {
 	console.log(reverse("hello"));	
 	}
else {
 	console.log(reverse("goodbye"));
 	}