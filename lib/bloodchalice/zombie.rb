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
    
    def reacts_to(tile)
      if tile.wall?
        return :stop
      elsif tile.empty?
        return :move
      elsif tile.player? or tile.knight?
        tile.hit(ATTACK)
        return :fight
      elsif tile.peasant? # Will be changed
        tile.hit(ATTACK)
        return :fight
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