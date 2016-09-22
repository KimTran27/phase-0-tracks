=begin
objective: to write a program for an interior designer 
to enter data of clients info: client's name, client's age,
number of children, decor theme. Store given info in hash.
=end

def client_information
	client_data ={}

	puts "Enter client's full name:"
	client_data[:name] = gets.chomp.capitalize

	puts "Enter client's age:"
	client_data[:age] = gets.chomp.to_i

	puts "Enter number of client's children, if none, enter 0."
	client_data[:children] = gets.chomp.to_i

	puts "Enter choice of decor theme:"
	client_data[:decor] = gets.chomp 

	puts "Enter favorite color:"
	client_data[:color] = gets.chomp 

	puts "Is your TV-watching chair important? (y/n)"
	tv_important = gets.chomp 
	if tv_important == "y"
		client_data[:tv_important] = true 
	else
		client_data[:tv_important] = false
	end

	puts "Does client agree to pay a $500 down payment on the design fee? (y/n)"
	design_fee = gets.chomp 
	if design_fee == "y"
		client_data[:design_fee] = true 
	else
		client_data[:design_fee] = false
	end

	#Print the hash back out to the screen
	puts "#{client_data[:name]}: Summary:"
	puts client_data
	puts ""

	#Give the user the opportunity to update a key
	puts "Do you need to update any info? 
	Type the category you need to update, otherwise type 'done'"
	updates = gets.chomp.downcase

	if updates == "done"
		puts "Client's info successfully saved."
	else
		puts "Enter updates for category: '#{updates.upcase}'"
		new_updates = gets.chomp

		#Convert any user input to the appropriate data type.
		updates = updates.to_sym
		client_data[updates] = new_updates
		puts ""
		puts "Updated info:"
		puts client_data
	end
end

client_information 









