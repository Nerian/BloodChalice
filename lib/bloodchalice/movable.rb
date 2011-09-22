class BloodChalice
  module Movable
    def move(direction)
      case direction
        when :north
          @map[@position[0]][@position[1]] = ' '
          @position[0] -= 1          
        when :south
          @map[@position[0]][@position[1]] = ' '
          @position[0] += 1
        when :east
          @map[@position[0]][@position[1]] = ' '
          @position[1] += 1
        when :west
          @map[@position[0]][@position[1]] = ' '
          @position[1] -= 1
      end                  
      @map[@position[0]][@position[1]] = self
    end
        
  end
end