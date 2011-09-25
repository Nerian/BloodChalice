class BloodChalice
  class Knight
    include BloodChalice::Movable
    include BloodChalice::TileValues

    attr_accessor :position, :life, :blood, :map, :value

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