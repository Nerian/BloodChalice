class BloodChalice
  def self.run
    puts 'Welcome to Blood Chalice'
    puts "How many players are going to play?"
    number_of_players = gets
    game = Game.new(number_of_players: number_of_players.strip.to_i)
    puts "There are #{game.players.size} players"
    game.show_map
  end
end