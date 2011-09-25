class BloodChalice
  class Knight
    include BloodChalice::Movable
    include BloodChalice::TileValues
    include BloodChalice::ArtificialIntelligence

    attr_accessor :position, :life, :blood, :map, :value, :speed

    MAX_LIFE = 5
    SPEED = 3
    ATTACK = 1
    VISION = 6
    MAXBLOOD = 1

    def initialize(options = {})
      @position = options[:position]
      @map = options[:map]
      @life = MAX_LIFE
      @blood = MAXBLOOD
      @value = 'K'
      @speed = SPEED
    end
    
    def reacts_to(tile)
      if tile.wall?
        return :stop
      elsif tile.empty?
        return :move
      elsif tile.player?
        tile.hit(ATTACK)
        return :fight 
      elsif tile.zombie?
        tile.hit(ATTACK)
        return :fight
      end
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