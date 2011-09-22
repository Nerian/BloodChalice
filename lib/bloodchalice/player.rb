class BloodChalice
  class Player 
    include BloodChalice::Movable
    
    attr_accessor :position, :life, :blood, :number, :map
    
    MAX_LIFE = 100
    SPEED = 5
    ATTACK = 3
    VISION = 10

    def initialize(options = {})
      @position = options[:position]
      @number = options[:number]
      @map = options[:map]    
      @life = MAX_LIFE
    end
    
    def dead?
      life < 1
    end

    def to_s
      @number.to_s
    end           
    
  end
end