// _.forIn() iterates over own and inherited enumerable properties of an object, 
// while _.forOwn() iterates only over own properties of an object (basically checking against hasOwnProperty function). 
// For simple objects and object literals any of these methods will work fine.
// // _.forIn(obj, function(value, key) {
//     console.log(key, value);
// });

var color = ["red", "orange", "yellow", "green"];
var names = ["Buster", "Princess", "Minxy", "Kim"];
color.push("blue");
names.push("Paul");

//'thing' should be the same structure for each row item
// var horse = {
//    "Buster" : "red",
//    "Princess" : "orange",
//    "Minxy":"yellow",
//    "Kim":"green",
//    "Paul":"blue"
// }

var horses = {}
// console.log (horse)
// to loop through the keys and values of an object in js
names.forEach(function(value, index) {
    horses[value] = color[index];
});
//for each horse name we assign a color to it.

// .forEach works without obj. 
// .forEach iterates over the array => the function array
// the function array has value, index...
// we set horses' value to be color. 
// each color is different based on its index.
// so for example, we start with the first horse

console.log(horses);
//this is how you print!