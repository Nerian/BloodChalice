class BloodChalice
  class Player
    attr_accessor :position, :life, :blood, :number, :map
    MAX_LIFE = 100
    SPEED = 5
    ATTACK = 3
    VISION = 10

    def initialize(options = {})
      @position = options[:position]
      @number = options[:number]
      @map = options[:map]
    end

    def to_s
      @number
    end

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