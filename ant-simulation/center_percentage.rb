require './seconds_simulation'
require 'pry'

simulation = SecondsSimulation.new
runs = 10000

runs.times do
  simulation.run_simulation
end

percent = (simulation.center_count.to_f/runs)*100

puts "center_count = #{simulation.center_count}"
puts ""
puts "%#{percent} of being in center"
