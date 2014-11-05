require './hour_simulation'
require 'pry'

simulation = HourSimulation.new
runs = 10000

runs.times do
  simulation.run_simulation
end

percent = (simulation.edge_count.to_f/runs)*100

puts "edge_count = #{simulation.edge_count}"
puts ""
puts "%#{percent} of being on an edge"
