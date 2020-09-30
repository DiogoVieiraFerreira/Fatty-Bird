require 'gosu'
require 'pp'

class Game < Gosu::Window 
    def initialize
        super 1280, 720, {resizable: false}
        self.caption = "Fatty Bird, love fat birds ♥"

        Character.new 50, self.height/2-25
    end
    def update
        
    end
    def draw
        
    end
end

class Character
    def initialize x, y, width: 50, height: 50
        @rectangle = Rectangle2D.new x, y, width, height
        pp @rectangle
    end
    def height
        @rectangle.width
    end
end

Game.new.show