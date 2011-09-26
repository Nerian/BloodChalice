class BloodChalice
  class Map 
    attr_accessor :map, :number_of_players    
    
    def initialize(path)
      @map = load_map(path)
    end
    
    def value(position)
      @map[position[0]][position[1]]
    end      
    
    def set_tile(position, value)
      @map[position[0]][position[1]] = value
    end
        
    def to_s
      result = ''
      @map.each do |line|            
        line.each { |tile| result += tile.to_s }
        result += "\n"
      end            
      result
    end
    
    def[](value)
      @map[value]
    end         
    
    private
    
    def load_map(path)
      filename = ASSETS_FOLDER + "world/#{path}"

      map = File.readlines(filename).each_with_index.map do |line, y|
        line.strip.split(//).each_with_index.map do |tile, x|
          Tile.new([y, x], tile)
        end
      end
    end                  
    
  end
end