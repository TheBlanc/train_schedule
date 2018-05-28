trains = [
{train: "72C", frequency_in_minutes: 15, direction: "north"},
{train: "72D", frequency_in_minutes: 15, direction: "south"},
{train: "610", frequency_in_minutes: 5, direction: "north"},
{train: "611", frequency_in_minutes: 5, direction: "south"},
{train: "80A", frequency_in_minutes: 30, direction: "east"},
{train: "80B", frequency_in_minutes: 30, direction: "west"},
{train: "110", frequency_in_minutes: 15, direction: "north"},
{train: "111", frequency_in_minutes: 15, direction: "south"}
]

# Q1
dir_111 = trains[7][:direction]
puts dir_111

# Q2
freq_80B = trains[5][:frequency_in_minutes]
puts freq_80B

# Q3
dir_610 = trains[2][:direction]
puts dir_610

# Q4
north_trains = []
trains.each do |train|
  if train[:direction] == "north"
    north_trains.push(train[:train])
  end
end

puts north_trains

# Q5
east_trains = []
trains.each do |train|
  if train[:direction] == "east"
    east_trains.push(train[:train])
  end
end
puts "\n"
puts east_trains

# Q6
def direction?(train_list, direction)
  dir_array = []
  train_list.each do |train|
    if train[:direction] == direction
      dir_array.push(train[:train])
    end
  end
  return dir_array
end

puts "\n\n"

puts direction?(trains, "north")
puts "\n"
puts direction?(trains, "east")

# Q7
trains[0][:first_departure_time] = [6]
puts trains
trains[0][:first_departure_time].push(7,8,9)
puts trains
