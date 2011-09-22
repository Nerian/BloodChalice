class BloodChalice
  class Game
    attr_accessor :map, :number_of_players, :players, :turn
    END_OF_THE_WORLD = 400

    def initialize(options = {})          
      @map = Map.new('map1')
      @number_of_players = options[:number_of_players]     
      @players = @map.generate_players(@number_of_players)      
      @turn = 1
    end

    def next_turn()
      system('clear')
      show_map()
      ask_next_action()
      @turn += 1
    end

    def ask_next_action()
      puts 'What are your orders, my Liege?'
      puts "A   Move to the West"
      puts "D   Move to the East"
      puts "W   Move to the North"
      puts "S   Move to the South"
      puts "Q   Quit"
      print 'Your order: '
      action = STDIN.getch

      case action.strip.upcase
        when 'W'
          @players[0].move(:north)
        when 'D'
          @players[0].move(:east)
        when 'S'
          @players[0].move(:south)
        when 'A'
          @players[0].move(:west)
        when 'Q'
          exit()
      end

    end

    def end_of_game?()
      (@turn == END_OF_THE_WORLD) or all_players_dead?
    end                                               
    
    def all_players_dead?
      @players.all? {|p| p.dead?}
    end

    def generate_players(number_of_players)
      1.upto(number_of_players) { |i| @players << Player.new(number: i, map: @map) }
    end

    def show_map()
      say @map.to_s
    end    
           
  end
end