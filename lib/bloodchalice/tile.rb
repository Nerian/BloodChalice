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
    
    def knight?
      @value == 'K'
    end           
    
    def chalice?
      @value == 'C'
    end
  end

  class Tile
    include BloodChalice::TileValues
    attr_accessor :value, :position

    def initialize(position, value )
      @value = value
      @position = position
    end                                  

    def to_s
      @value.to_s
    end

  end
end