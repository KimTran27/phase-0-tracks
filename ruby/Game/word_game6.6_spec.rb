require_relative 'word_game6.6'

describe WordGame do
	let(:game) { WordGame.new("Kimchi") }

	describe 'attributes' do
		it "allows interpreting and writing for :user_word" do
		  game.user_word = 'xoxo'
	      expect(game.answer).to eq('xoxo')
	    end

	    it "allows interpreting for :guess_words" do
	      expect(game.guess_words).to eq(5)
	    end

	end
    
	it "allows the user to guess a right alphabet character" do
		expect(game.guess_words('k')).to eq "k _ _ _ _ _"
	end

end