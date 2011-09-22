class BloodChalice                                                
  
  ASSETS_FOLDER = Pathname.new(__FILE__).dirname + '../../' + 'assets'
      
  class Application
    def self.run
      say('Welcome to Blood Chalice')
      number_of_players = ask("How many players are going to play?").to_i
      
      game = Game.new(number_of_players: number_of_players)
      while not game.end_of_game?
        game.next_turn
      end
    end
  end  
end