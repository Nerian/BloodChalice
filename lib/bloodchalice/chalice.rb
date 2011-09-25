class BloodChalice
  class Chalice
    include BloodChalice::Movable
    include BloodChalice::TileValues

    attr_accessor :position, :life, :blood, :map, :value

    def initialize(options = {})
      @position = options[:position]
      @map = options[:map]
      @life = 400
      @blood = 0
      @value = 'C'
    end

    def to_s
      @value.to_s
    end

  end
end