########
# This is a very basic IA just for testing.
########

class BloodChalice
  module ArtificialIntelligence
    def think()
      self.speed.times { move(Movable::DIRECTIONS.keys.sample) }
    end                                   
    
    def reacts_to(tile)
      if tile.wall?
        return :stop
      elsif tile.empty?
        return :move
      end
    end
    
    def die()
      @game.remove_npc(self)
      @map.set_tile @position, Tile.new(@position, ' ')
    end

    def bited()
      @blood -= 1
      if @blood <= 0
        die()
      end
    end

    def hit(damage)
      @life -= damage
      if @life <= 0
        die()
      end
    end
    
  end   
end