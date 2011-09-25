class BloodChalice
  module Movable
    DIRECTIONS = {north: [-1, 0], east: [0, 1], south: [1, 0], west: [0, -1] }
    
    def move(direction)
      @moves -= 1
      case direction
        when :north          
          position = sum_positions(@position, DIRECTIONS[:north])          
          @map[@position[0]][@position[1]] = ' '
          @position = position          
        when :south                                              
          position = sum_positions(@position, DIRECTIONS[:south])
          @map[@position[0]][@position[1]] = ' '
          @position = position
        when :east                                               
          position = sum_positions(@position, DIRECTIONS[:east])
          @map[@position[0]][@position[1]] = ' '
          @position = position
        when :west                                               
          position = sum_positions(@position, DIRECTIONS[:west])
          @map[@position[0]][@position[1]] = ' '
          @position = position
      end                  
      @map[@position[0]][@position[1]] = self
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