#write your own method that takes a block.
def print_line
	puts "this is the first line."
	yield ()
	puts "this is the third line."
end

print_line {puts "this is the second line."}


#declare and array
toppings = ["cheese", "olives", "sausages", "veggies"]
toppings.each do |topping|
	puts "I like these pizza toppings: #{topping}"
end

#declare a hash
actor_actress = {
	"Bill_Murray" => 'guy', "Angelina_Jolie" => 'gal', "Sean_Connery" => 'guy'
}
actor_actress.each do |name, gender|
	puts name
	puts gender
end

puts actor_actress

toppings.map! do |topping|
	topping.upcase
end
puts toppings

#A method that iterates through the items, 
#deleting any that meet a certain condition 
#(for example, deleting any numbers that are less than 5)
numbers = [1,2,3,4,5,6,7,8,9,10]
numbers.reject! do |number|
	number < 5
end
p numbers

digit_word = {
	1 => "one", 3 => "three", 5 => "five", 7 => "seven", 9 => "nine"
}
digit_word.reject! do |digit, word|
	digit < 5
end
p digit_word


# number 2: A method that filters a data structure 
#for only items that do satisfy a certain condition 
#(for example, keeping any numbers that are less than 5).
numbers = [1,2,3,4,5,6,7,8,9,10]
numbers.select! do |number|
	number < 5
end
p numbers

digit_word = {
	1 => "one", 3 => "three", 5 => "five", 7 => "seven", 9 => "nine"
}
digit_word.select! do |digit, word|
	digit < 5
end
p digit_word

#3 A different method that filters a data structure 
#for only items satisfying a certain condition -- Ruby offers several options!

numbers = [1,2,3,4,5,6,7,8,9,10]
numbers.keep_if do |number|
	number < 5
end
p numbers

digit_word = {
	1 => "one", 3 => "three", 5 => "five", 7 => "seven", 9 => "nine"
}
digit_word.keep_if do |digit, word|
	digit < 5
end
p digit_word

#4 A method that will remove items from a data structure 
#until the condition in the block evaluates to false, 
#then stops (you may not find a perfectly working 
#option for the hash, and that's okay).
numbers = [1,2,3,4,5,6,7,8,9,10]
numbers.delete_if do |number|
	number < 5
end
p numbers

digit_word = {
	1 => "one", 3 => "three", 5 => "five", 7 => "seven", 9 => "nine"
}
digit_word.delete_if do |digit, word|
	digit < 5
end
p digit_word
