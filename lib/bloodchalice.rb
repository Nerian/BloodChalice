class BloodChalice  
  def self.run
    puts 'Welcome to Blood Chalice'
    puts "How many players are going to play?" 
    number_of_players = gets  
    game = Game.new              
    game.show_map
  end

  class Game
    attr_reader :map, :number_of_players 

    def initialize()
      @map = generate_map('map1')      
    end    
    
    def show_map
      @map.each do |line|
        line.each do |tile|
          print tile
        end    
        puts ''
      end
    end                    

    def generate_map(map_name)
      map = []
      f = File.open("lib/world/#{map_name}", "r") 
      i = 0  
      f.each_line do |line|         
        map[i] = []
        line.strip.each_char do |tile|          
          map[i].push tile
        end                
        i += 1
      end
      map
    end
  end
end