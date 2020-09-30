class Vector2
    attr_accessor :x, :y
    def initialize x, y
        @x, @y = x, y
    end

    def self.zero
        self.new(0, 0)
    end

    def * value
        return self.clone.scale(value.x, value.y) if value.instance_of? Vector2
        self.clone.scale(value, value)
    end

    def + value
        return self.clone.add(value.x, value.y) if value.instance_of? Vector2
        self.clone.add(value, value) 
    end

    def add val_x, val_y
        @x += val_x
        @y += val_y
        self
    end
    def scale val_x, val_y
        @x *= val_x
        @y *= val_y
        self
    end
end

class Rectangle2D
    attr_accessor :x, :y, :width, :height
    def initialize x = 0, y = 0, width = 0, height = 0
        @x, @y, @width, @height = x, y, width, height
    end

    def position
        Vector2.new @x, @y
    end
    def size
        Vector2.new @width, @height
    end
    def right
        @x + @width
    end
    def bottom
        @y + @height
    end
    def over? pos_x, pos_y
        pos_x.between?(x, right) && pos_y.between?(y, bottom)
    end
end