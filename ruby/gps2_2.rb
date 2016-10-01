# Method to print a list and make it look nice

def print_list(list)
	list.each do |item,quantity|
		puts "I am purchasing #{quantity} #{item}."
	end
end

def list(string)
	array = string.split(" ")
	hash = Hash.new
	array.each do |item|
		hash[item] = 1
	end
	return
	p hash
	print_list(hash)
end
#grocery_list = list("carrots oranges kale lettuce spinach mushrooms")
#default quantity = 1

# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# Method to add an item to a list
# input: item name and optional quantity
# steps:
# output:

# Method to remove an item from the list
# input:
# steps:
# output:

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output:

