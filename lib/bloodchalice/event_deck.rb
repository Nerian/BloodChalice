class BloodChalice
  class EventDeck
    CARDS = [:new_zombie, :new_knight, :new_peasant]

    attr_accessor :game, :map

    def initialize(game)
      @game = game
      @map = game.map
    end

    def take_a_card()
      modify_world(get_card())
    end

    def get_card()
      CARDS.sample
    end

    def modify_world(card)
      empty_tiles = @map.map.flatten.select { |t|  t.empty?}
      case card
        when :new_zombie
          puts "New zombie!"
          tile = empty_tiles.sample
          @map.set_tile(tile.position, Zombie.new(map: @map, position: tile.position))
        when :new_knight
          puts "New Knight!"
          tile = empty_tiles.sample          
          @map.set_tile(tile.position, Knight.new(map: @map, position: tile.position))
        when :new_peasant
          puts "New Peasant!"                                                  
          tile = empty_tiles.sample          
          @map.set_tile(tile.position, Peasant.new(map: @map, position: tile.position))
      end
    end
  end
end