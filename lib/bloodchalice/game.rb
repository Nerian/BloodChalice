class BloodChalice
  class Game
    attr_accessor :map, :number_of_players, :players, :turn
    END_OF_THE_WORLD = 400

    def initialize(options = {})
      generate_players(@number_of_players) 
      @map = generate_map('map1')
      @number_of_players = options[:number_of_players]
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
      if @turn == END_OF_THE_WORLD 
        return true
      end
    end
    
    def generate_players(number_of_players)
      @players = []
      #number_of_players.times { @players << Player.new }
    end                 

    def show_map()
      @map.each do |line|
        line.each { |tile| print tile.to_s }    
        puts ''
      end
    end                    

    def generate_map(map_name)
      @map = []
      f = File.open("lib/bloodchalice/world/#{map_name}", "r") 
      y = 0
      x = 0  
      f.each_line do |line|         
        @map[y] = []
        line.strip.each_char do |tile|          
          case tile
            when '1'                                                                
              player = Player.new(position: [y, x], number: tile.to_i, map: @map)
              @players << player
              @map[y].push player
            else
              @map[y].push tile
          end                      
          x += 1
        end
        x = 0
        y += 1
      end
      @map
    end
  end
end