class BloodChalice
  class Zombie
    include BloodChalice::Movable
      
    attr_accessor :position, :life, :blood, :map
        
    MAX_LIFE = 100
    SPEED = 2
    ATTACK = 1
    VISION = 5
    
    def initialise()
      @position = options[:position]
      @map = options[:map]    
      @life = MAX_LIFE
      @blood = 0      
    end
    
  end
end