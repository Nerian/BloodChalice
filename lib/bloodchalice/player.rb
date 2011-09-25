class BloodChalice
  class Player
    include BloodChalice::Movable
    include BloodChalice::TileValues

    attr_accessor :position, :life, :blood, :number, :map, :moves, :value

    MAX_LIFE = 100
    SPEED = 7
    ATTACK = 3
    VISION = 10

    def initialize(options = {})
      @position = options[:position]
      @value = @number = options[:number]
      @map = options[:map]
      @life = MAX_LIFE
      @moves = SPEED
      @blood = 0
    end

    def reacts_to(tile)
      if tile.wall?
        return :stop
      elsif tile.player?
        return :stop
      elsif tile.peasant?
        bite(tile)
        return :fight
      elsif tile.zombie?
        fight(tile)
        return :fight
      elsif tile.empty?
        return :move
      end
    end
    
    def fight(enemy)
      enemy.hit(ATTACK)
    end

    def bite(human)
      human.bited
      @blood += 1
    end

    def reset_moves
      @moves = SPEED
    end

    def dead?
      life < 1
    end

    def to_s
      @number.to_s
    end

  end
end