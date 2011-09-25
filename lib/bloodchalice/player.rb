class BloodChalice
  class Player 
    include BloodChalice::Movable
    include BloodChalice::TileValues
    
    attr_accessor :position, :life, :blood, :number, :map, :moves, :value
    
    MAX_LIFE = 100
    SPEED = 5
    ATTACK = 3
    VISION = 10

    def initialize(options = {})
      @position = options[:position]
      @value = @number = options[:number]
      @map = options[:map]    
      @life = MAX_LIFE
      @moves = SPEED
    end
    
    def reacts_to(tile) 
      if tile.wall?
        return :stop
      elsif tile.player?
        return :stop
      elsif tile.empty?
        return :move
      end
    end
    
    def reset_moves
      @moves = SPEED
    end
    
    def dead?
      life < 1
    end

    def to_s
      @number.to_s
    end           
    
  end
end