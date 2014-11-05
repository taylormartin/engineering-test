require './ant'

class HourSimulation

  attr_reader :edge_count

  def initialize
    @edge_count = 0
  end

  def run_simulation
    @ant = Ant.new
    3600.times do
      @ant.execute_move
    end
    edge_check
  end

  def edge_check
    location = @ant.get_location
    if location.include?(1)
      @edge_count += 1
    elsif location.include?(5)
      @edge_count += 1
    end
  end

end
