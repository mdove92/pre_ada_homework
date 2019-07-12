=begin "Write a program that plays duck duck goose. Allow the
user to enter the player's number they want to call goose on,
and then say "duck" for each player before the "goose", then
say "goose" for the chosen player.
=end

# Prompt user to enter player numeber
puts "Which player number is Goose?"
number = gets.chomp.to_i
i = 1

# Input validation
while number <= 0
  puts "Incorrect input, please try again with a number"
  number = gets.comp.to_i
end

# Print DUCK for each player until it reaches the
# player number designated by user as GOOSE
while i < number
  puts "Player #{i} DUCK"
  i += 1
  gets.chomp
end

#Display GOOSE
puts "Player #{i} GOOSE"
