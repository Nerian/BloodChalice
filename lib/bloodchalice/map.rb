class BloodChalice
  class Map
    def self.load_map(path)
      filename = Pathname.new(__FILE__).dirname + "world" + path

      map = File.readlines(filename).each.map do |line|
        line.strip.split(//).each.map do |tile|       
          tile
        end
      end
    end  
    
    def self.generate_players(number_of_players, map)
      players = []
      map.each_with_index do |line, y|
        line.each_with_index do |tile, x|
          if is_a_player?(tile)
            if is_an_active_player?(tile, number_of_players)
              players <<  map[y][x] = Player.new(map: map, position: [y, x], number: tile.to_i)               
            else
              map[y][x] = ' '
            end            
          end
        end
      end
      players
    end
    
    def self.get_player(player_number, map)
      map.each
    end               
    
    private
    
    def self.is_an_active_player?(tile, number_of_players)
      tile.to_i <= number_of_players
    end
    
    def self.is_a_player?(tile)      
      tile.to_i != 0
    end    
    
  end
end