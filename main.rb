require 'gosu'
require 'pp'

class Game < Gosu::Window 
    def initialize
        super 1280, 720, {resizable: false}
        self.caption = "Flatty Bird, love fat birds ♥"
    end
    def update
        
    end
    def draw
        
    end
end

Game.new.show