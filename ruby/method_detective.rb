# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.
# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.


puts "iNvEsTiGaTiOn".gsub /..?/, &:capitalize

puts "iNvEsTiGaTiOn".swapcase == “InVeStIgAtIoN”
# => “InVeStIgAtIoN”

puts "zom".insert(1, "o")
puts "zom".insert(2, "o")
puts "zom".insert(-2, "o")
puts "zom".insert(-3, "o")
# => “zoom”

puts "enhance".center(16)
puts "enhance".center(9 + "enhance".length)
# => "    enhance    "

puts "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

puts " suspects".prepend " the usual"
puts "the usual".insert(-1, " suspects")
#=> "the usual suspects"

puts "the usual".insert 9, " suspects"
puts " suspects".insert(0, "the usual")
# => "the usual suspects"

# "The case of the disappearing last letter".<???>
puts "The case of the disappearing last letter".chomp("r")
puts "The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

# "The mystery of the missing first letter".<???>
puts "The mystery of the missing first letter".delete("T")
# => "he mystery of the missing first letter"

# "Elementary,    my   dear        Watson!".<???>
"Elementary,    my   dear        Watson!".squeeze
# => "Elementary, my dear Watson!"

# "z".<???>
puts "z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# Return the Integer ordinal of a one-character string.

# "How many times does the letter 'a' appear in this string?".<???>
puts "How many times does the letter 'a' appear in this string?".count('a')
# => 4