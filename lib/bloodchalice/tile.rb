class BloodChalice
  module TileValues
    def wall?
      @value == '#'
    end

    def player?
      @value.to_i > 0
    end

    def empty?
      @value == ' '
    end

    def peasant?
      @value == 'P'
    end

    def zombie?
      @value == 'Z'
    end
  end

  class Tile
    include BloodChalice::TileValues
    attr_accessor :value

    def initialize(value)
      @value = value
    end

    def to_s
      @value.to_s
    end

  end
end