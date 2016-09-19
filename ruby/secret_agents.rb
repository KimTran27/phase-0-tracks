def encrypt (str)
	index = 0
	while index < str.length
		if str[index] == ""
			index += 1
		else
			puts "this is the current #{str.length}"
			# puts str[index]
			str[index] =str[index].next
			# puts str[index] + "new"
			index += 1
			puts "this is the current word #{str}"
			puts "this is the current #{str.length}"
		end
	end
	str
end

#puts "enter str to encrypt"
#puts encrypt(gets.chomp)

#decrypt
def decrypt (str)
	index = 0
	while index < str.length
		alphabet = "abcdefghijklmnopqrstuvwxyz"
    	reversed_alpha = alphabet.reverse!
		 add_index = reversed_alpha.index(str[index]) 
    add_index += 1
    str[index] = reversed_alpha[add_index]
    index += 1
	end
	str
end

#puts "enter a password to decrypt"
#puts decrypt(encrypt("swordfish"))
#puts decrypt(gets.chomp)
counter = 0
while counter < 1

puts "Do you want to encrypt or decrypt a password?"
password_status = gets.chomp.downcase
	if password_status == "encrypt"
	perference_1 = 1
	counter += 2
	elsif password_status == "decrypt"
	perference_1 =2
	counter += 2
	else
	puts "Not valid"
	counter == 0
	end
end

puts "Please enter your password."
str = gets.chomp
if agent_request = 1
    encrypt(secret_password)
elsif agent_request = 2
    decrypt(secret_password)
end

puts "Goodbye"
