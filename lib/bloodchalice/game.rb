class BloodChalice
  class Game
    attr_accessor :map, :number_of_players, :players, :turn, :chalice, :non_playable_characters, :event_deck
    END_OF_THE_WORLD = 400

    def initialize(options = {})
      @non_playable_characters = []
      @map = Map.new('map1')
      @number_of_players = options[:number_of_players]
      @players = generate_players(map)
      generate_npc(map)
      @turn = 1 
      @event_deck = EventDeck.new(self)     
    end

    def next_turn()
      event_deck.take_a_card
      players.each do |player|
        player.reset_moves
        while player.moves?
          show_interface(player)
          ask_next_action(player)
        end
        show_interface(player)
        ask "Next Player: hit enter"
      end                 
      
      @non_playable_characters.each &:reset_moves
      @non_playable_characters.each &:think      
      
      @turn += 1
    end

    def ask_next_action(player)
      say "A   Move to the West"
      say "D   Move to the East"
      say "W   Move to the North"
      say "S   Move to the South"
      say "Q   Quit"

      print 'Your order: '
      action = STDIN.getch

      case action.strip.upcase
      when 'W'
        player.move(:north)
      when 'D'
        player.move(:east)
      when 'S'
        player.move(:south)
      when 'A'
        player.move(:west)
      when 'Q'
        exit()
      end
    end

    def end_of_game?()
      (@turn == END_OF_THE_WORLD) or all_players_dead? or @chalice.blood >= 50 
    end

    def all_players_dead?
      @players.all? {|p| p.dead?}
    end

    def generate_players(number_of_players)
      1.upto(number_of_players) { |i| @players << Player.new(number: i, map: @map) }
    end

    def show_interface(player)
      system('clear')
      say "It is the turn of Player #{player.number} and there are #{END_OF_THE_WORLD - @turn} turns until dawn."
      say "The Blood Chalice has #{@chalice.blood} of 50 blood units"
      show_map
      say "You have #{player.moves}/#{Player::SPEED} moves left, #{player.blood} blood stored and #{player.life}/#{Player::MAX_LIFE} HP"
      say 'What are your orders, my Liege?'
    end

    def show_map()
      say @map.to_s
    end

    def active_player?(tile)
      tile.value.to_i <= @number_of_players
    end

    def generate_npc(map)
      map.map.each_with_index do |line, y|
        line.each_with_index do |tile, x|
          if tile.peasant?              
            peasant = Peasant.new(map: map, position: [y, x])
            @non_playable_characters << peasant
            map.set_tile [y, x], peasant
          elsif tile.zombie?        
            zombie = Zombie.new(map: map, position: [y, x])
            @non_playable_characters << zombie
            map.set_tile [y, x], zombie
          elsif tile.knight?        
            knight = Knight.new(map: map, position: [y, x])
            @non_playable_characters << knight
            map.set_tile [y, x], knight
          elsif tile.chalice?
            @chalice = Chalice.new(map: map, position: [y, x])
            map.set_tile [y, x], @chalice
          end
        end
      end
    end

    def generate_players(map)
      players = []

      map.map.each_with_index do |line, y|
        line.each_with_index do |tile, x|
          if tile.player? && active_player?(tile)
            players <<  map[y][x] = Player.new(map: map, position: [y, x], number: tile.value)
          elsif tile.player?
            map.set_tile [y, x], Tile.new([y, x], ' ')
          end
        end
      end
      players
    end

  end
end