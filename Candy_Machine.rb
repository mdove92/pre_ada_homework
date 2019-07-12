# This is my Candy Machine Code!
# Instructions:
=begin
    Ask the user how much money they have, assume that the $ symbol is part of the prompt
     (the user doesn't have to enter it)
    Display all candy options and their costs (even if the user cannot afford the candy)
    Decide whether the user can afford the candy or not, if they can't, tell them so, 
    if they can, calculate and display their change
    [Optional] Handle when the buyer enters "C" or "c" so that it works as expected
    [Optional] Do something appropriate when the buyer enters an invalid amount for the 
    money and an invalid selection
=end
# Instantiate hashes for both candy names and the cost of the candies
candy_names = {}
candy_names["A"] = "Jawbreaker"
candy_names["B"] = "Butterfinger"
candy_names["C"] = "Pillow Mint"
candy_names["D"] = "Redvines"
candy_names["E"] = "Gummi Bears"

candy_costs = {}
candy_costs["A"] = 0.65
candy_costs["B"] = 0.50
candy_costs["C"] = 0.25
candy_costs["D"] = 1.00
candy_costs["E"] = 0.75

# Welcome the user to the program, obtain user input for money.
puts "Welcome to Mac's Candy Machine!"
puts "How much money do you have?"
money = gets.chomp.to_f
puts ""

# Input validation for amount of money
while money < 0.25
  puts "I dont think that's an amount you can buy candy with. Please try again."
  puts "How much money do you have?"
  money = gets.chomp.to_f
  puts ""
end

# Present options to user and request a selection
puts "That's Great! Here are all of your options:"
puts " A Jawbreaker    $.65\n B Butterfinger  $.50\n C Pillow Mint   $.25\n D Redvines      $1.00\n E Gummi Bears   $.75"
puts ""

puts "Which option would you like? Please select a letter"
choice = gets.chomp.capitalize

puts ""

# Input validation of choice input by user and check if user has enough money
while !candy_costs.has_key?(choice) || money < candy_costs[choice]
  if !candy_costs.has_key?(choice)
    puts "Invalid Selection. Please make your choice again."
  else
    puts "Insufficient funds. Please make another selection."
  end
  # Repeat options to user
  puts ""
  puts "Here are all of our options:"
  puts " A Jawbreaker    $.65\n B Butterfinger  $.50\n C Pillow Mint   $.25\n D Redvines     $1.00\n E Gummi Bears $.75"
  puts ""
  puts "Which option would you like? Please select a letter"
  choice = gets.chomp.capitalize
end

puts ""

# Provide user with candy and their change
change = money - candy_costs[choice]
puts "Great choice! Here is your #{candy_names[choice]} and your #{"%.2f" % change} in change! Please do come again!"
