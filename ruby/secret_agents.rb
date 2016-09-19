def encrypt (str)
	index = 0
	while index < str.length
		if str[index] == ""
			index += 1
		else
			str[index] =str[index].next
			index += 1
		end
	end
	str
end

puts encrypt("z cd yxv")