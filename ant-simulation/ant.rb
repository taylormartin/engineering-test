require 'pry'

class Ant
  def initialize
    @x = 3
    @y = 3
    @num = Random.new
  end

  def get_location
    [@x,@y]
  end

  def execute_move
    move = @num.rand(1..5)
    if move == 1
      move_up
    elsif move == 2
      move_down
    elsif move == 3
      move_left
    elsif move == 4
      move_right
    end
  end

  def move_up
    unless @y == 5
      @y += 1
    end
  end

  def move_down
    unless @y == 1
      @y -= 1
    end
  end

  def move_left
    unless @x == 1
      @x -= 1
    end
  end

  def move_right
    unless @x == 5
      @x += 1
    end
  end

end
