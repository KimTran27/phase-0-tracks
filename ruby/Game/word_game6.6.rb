#A simple word game
#Date: Oct 02 2016
#DBC 6.6 Solo Challenge

class WordGame
  attr_accessor :user_word 
  attr_reader :guess_words, :total_chances

  def initialize(user_word)
    @user_word = user_word.downcase.split("")
    @guess_words = (user_word.length * 1.5).to_i
    @guess_words = @total_chances
    match_char = ''
  end
end

################### DRIVER CODE #############################

print "USER 1 : Enter your word: "
user_word = gets.chomp.downcase.strip
game = WordGame.new(user_word)

print "USER2: You have #{@total_chances} chances to guess. Enter one character at a time. Good Luck."

@total_chances = (user_word.length * 1.5).to_i
@incorrect_guess = 0
match_char = ''

def get_placeholder sample_word, guess_words
  placeholder = ''
  sample_word.chars { |char| 
    placeholder += (guess_words.include? char)? char : '#'
  }
  
placeholder
end

puts `clear`
puts 'Mystery Word:'+ get_placeholder(user_word, '')

while true
  print "Enter word [#{@total_chances - @incorrect_guess} chances left]:"

  char = gets.chomp
  puts `clear`
  
  if user_word.include? char

    if(match_char.include? char)
      puts char + ' has already been used.'
      puts 'Try another: ' + get_placeholder(user_word, match_char)
    else
      match_char = match_char + char
      placeholder = get_placeholder(user_word, match_char)

      puts 'Word Progress: ' + placeholder 
    end

    unless placeholder.include? '#'
      puts "Hooraaay! You won! C:"
      break
    end
  else
    puts "Sorry! The word dosen't contains '#{char}'"
  @incorrect_guess += 1

    if (@incorrect_guess == @total_chances)
      puts "Sorry, maybe in the next life... Goodbye."
      break
    else
      puts 'Try another: ' + get_placeholder(user_word, match_char)
    end
  end

end