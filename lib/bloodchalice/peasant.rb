class BloodChalice
  class Peasant
    include BloodChalice::Movable
    include BloodChalice::TileValues

    attr_accessor :position, :life, :blood, :map, :value

    MAX_LIFE = 2
    SPEED = 2
    ATTACK = 0
    VISION = 6
    MAXBLOOD = 3

    def initialize(options = {})
      @position = options[:position]
      @map = options[:map]
      @life = MAX_LIFE
      @blood = MAXBLOOD
      @value = 'P'
    end

    def bited
      @blood -= 1
      if @blood == 0
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