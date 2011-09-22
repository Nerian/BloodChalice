class BloodChalice
  class Tile
    attr_accessor :value
    
    def initialize(value)
      @value = value
    end             
    
    def wall?
      @value == '#'
    end           
    
    def player?
      @value.to_i > 0
    end              
    
    def empty?
      @value == ' '
    end           
    
    def to_s
      @value.to_s
    end
    
  end
end