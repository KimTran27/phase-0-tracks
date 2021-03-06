class Player
  include Comparable
  attr_accessor :name, :score

  def <=>(other_player)
    score <=> other_player.score
  end

  def initialize(name, score)
    @name, @score = name, score
  end
end

class Game
	include Enumerable
	attr_accessor :players
	def each(&block)
    players.each(&block)
  end

  def initialize
    @players = []
  end

  def add_player(player)
    players.push(player)
  end

  def score
    score = 0
    players.each do |player|
      score += player.score
    end
    score
  end
end

player1 = Player.new("Kim", 100)
player2 = Player.new("Kenneth", 80)
player3 = Player.new("Kylie", 95)
player4 = Player.new("Kyle", 20)

game1 = Game.new
game1.add_player(player1)
game1.add_player(player2)

game2 = Game.new
game2.add_player(player3)
game2.add_player(player4)

game1.each do |player|
  puts "Player: #{player.name}, score: #{player.score}"
end

high_scores = game1.select do |player|
  player.score > 80
end
puts high_scores.inspect

puts game1.any?{|player| player.score > 80}

players = game1.find{|player| player.score > 80}
puts "Players with a score > 50", players.inspect










