class BloodChalice
  class Zombie
    include BloodChalice::Movable
    include BloodChalice::TileValues
    include BloodChalice::ArtificialIntelligence

    attr_accessor :position, :life, :blood, :map, :value, :speed

    MAX_LIFE = 2
    SPEED = 2
    ATTACK = 1
    VISION = 5
    MAXBLOOD = 0

    def initialize(options = {})
      @position = options[:position]
      @map = options[:map]
      @life = MAX_LIFE
      @blood = MAXBLOOD
      @value = 'Z' 
      @speed = SPEED
    end

    def hit(damage)
      @life -= damage
      if @life <= 0 
        die()
      end
    end

    def die
      @map.set_tile @position, Tile.new(' ')
    end

    def to_s
      @value.to_s
    end

  end
end