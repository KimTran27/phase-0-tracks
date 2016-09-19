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
	while index <str.length
		if str[index] == ""
			index += 1
		else
			str[index] = reverse(str[index])
		end
		index +=1
	end
	str
end

#puts "enter a password to decrypt"
#puts decrypt(encrypt("swordfish"))
#puts decrypt(gets.chomp)

puts "Do you want to encrypt or decrypt a password?"
password_status = gets.chomp.downcase
if password_status == "encrypt"
	puts "Enter your password"
	password_encrypt = encrypt(gets.chomp)
	puts password_encrypt
elsif password_status == "decrypt"
	puts "Enter your password"
	password_decrypt = decrypt(gets.chomp)
	puts password_decrypt
else
	puts "Not valid"
end

puts "Goodbye"
