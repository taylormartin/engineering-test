require './ant'

class SecondsSimulation

  attr_reader :center_count

  def initialize
    @center_count = 0
  end

  def run_simulation
    @ant = Ant.new
    15.times do
      @ant.execute_move
    end
    center_check
  end

  def center_check
    location = @ant.get_location
    if location[0] == 3 && location[1] == 3
      @center_count += 1
    end
  end

end
