class BloodChalice
  class Game
    attr_accessor :map, :number_of_players, :players, :turn
    END_OF_THE_WORLD = 400

    def initialize(options = {})
      @map = generate_map('map1')
      @number_of_players = options[:number_of_players]   
      
      generate_players(@number_of_players)            
    end
    
    def generate_players(number_of_players)
      @players = []
      number_of_players.times { @players << Player.new }
    end              

    def show_map
      @map.each do |line|
        line.each { |tile| print tile.to_s }    
        puts ''
      end
    end                    

    def generate_map(map_name)
      map = []
      f = File.open("lib/bloodchalice/world/#{map_name}", "r") 
      y = 0
      x = 0  
      f.each_line do |line|         
        map[y] = []
        line.strip.each_char do |tile|          
          case tile
            when '1'
              map[y].push Player.new(position: [y, x], number: tile.to_i)
            else
              map[y].push tile
          end                      
          x += 1
        end
        x = 0
        y += 1
      end
      map
    end
  end
end