class BloodChalice  
  def self.run
    puts 'Welcome to Blood Chalice'
    puts "How many players are going to play?" 
    number_of_players = gets  
    game = Game.new              
    game.show_map
  end
end