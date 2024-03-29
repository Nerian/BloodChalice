class BloodChalice
  class Peasant
    include BloodChalice::Movable
    include BloodChalice::TileValues
    include BloodChalice::ArtificialIntelligence

    attr_accessor :position, :life, :blood, :map, :value, :speed, :game

    MAX_LIFE = 2
    SPEED = 2
    ATTACK = 0
    VISION = 6
    MAXBLOOD = 3

    def initialize(options = {})
      @position = options[:position]
      @map = options[:map]
      @game = options[:game]
      @life = MAX_LIFE
      @blood = MAXBLOOD
      @value = 'P'
      @speed = SPEED
    end

    def to_s
      @value.to_s
    end
  end
end