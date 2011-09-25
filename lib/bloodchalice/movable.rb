class BloodChalice
  module Movable
    DIRECTIONS = {north: [-1, 0], east: [0, 1], south: [1, 0], west: [0, -1] }
    
    def move(direction)
      case direction
        when :north          
          position = sum_positions(@position, DIRECTIONS[:north])
          move!(position) unless reacts_to(@map.value(position)) == :stop
        when :south                                              
          position = sum_positions(@position, DIRECTIONS[:south])
          move!(position) unless reacts_to(@map.value(position)) == :stop
        when :east                                               
          position = sum_positions(@position, DIRECTIONS[:east])
          move!(position) unless reacts_to(@map.value(position)) == :stop
        when :west                                               
          position = sum_positions(@position, DIRECTIONS[:west])
          move!(position) unless reacts_to(@map.value(position)) == :stop
      end                        
    end
    
    def move!(position)
      @map.set_tile(@position, Tile.new(' '))
      @position = position
      @moves -= 1          
      @map.set_tile(position, self)
    end
    
    def moves?
      self.moves > 0
    end
    
    private 
    
    def sum_positions(pos1, pos2)
      [pos1[0] + pos2[0], pos1[1] + pos2[1]]
    end
        
  end
end