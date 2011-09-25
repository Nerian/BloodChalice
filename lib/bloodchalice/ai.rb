########
# This is a very basic IA just for testing.
########

class BloodChalice
  module ArtificialIntelligence
    def think
      self.speed.times { move(Movable::DIRECTIONS.keys.sample) }
    end                                   
    
    def reacts_to(tile)
      if tile.wall?
        return :stop
      elsif tile.empty?
        return :move
      end
    end
  end
end