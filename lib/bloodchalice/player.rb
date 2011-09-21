class BloodChalice
  class Player
    attr_accessor :position, :life, :blood, :number
    MAX_LIFE = 100
    SPEED = 5
    ATTACK = 3
    VISION = 10

    def initialize(options = {})
      @position = options[:position]
      @number = options[:number]
      puts @position
    end                        
    
    def to_s
      @number
    end       
  end
end