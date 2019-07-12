#EXERCISE1
=begin 
Write a program that allows a user to play a guessing number game.
Your program should generate a random number between 0 – 1000
(including 0, but not including 1000). Allow the user to
make a guess until they guess the answer. After each guess
you should print "higher" or "lower". When they guess it
correctly print a winning message along with their total 
number of guesses.
=end

# Generate a random number between 0 and 1000 and prompt user to guess it. 
number = rand(0...1000) 
puts "Can you guess what number I'm thinking of between 0 and 1000?"
guess = gets.chomp.to_i
puts ""

# Create counter for guesses
i = 1

# Tell user if their guess needs to be higher or lower if they are incorrect.
while guess != number
    if guess >= (number - 2) && guess <= (number + 2)
        puts "You're REALLY close!"
        guess = gets.chomp.to_i
        puts ""

    elsif guess > number
        puts "LOWER"
        guess = gets.chomp.to_i
        puts ""
        
    else 
        puts "HIGHER"
        guess = gets.chomp.to_i
        puts ""

    end
  i += 1
end

# Tell user they were correct and in how many guesses they did it. 
puts "You got my number in #{i} guesses!"



#EXERCISE 2
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



# Exercise 3
=begin Write a program that allows a user to enter the number
 of petals on a flower. Then one by one, print “plucking petal
#1: they love me!”. Alternate “They love me” and “They love 
me not” as well as increase the petal number for each petal.
=end

# Prompt user to get number of petals
puts "How many petals are on your flower?"
petals = gets.chomp.to_i

puts ""

# Instantiate counter
i = 1

# For each each alternating petal display one of two messages
# Increment the petal count by 1 each time the user hits return
while i <= petals
    if i % 2 == 1
        puts "Plucking Petal ##{i} - They LOVE me!"
        i += 1
        gets.chomp
    elsif i % 2 == 0 
        puts "Plucking Petal ##{i} - They love me NOT!"
        i += 1
        gets.chomp
    end
end



# Exercise 4
=begin You don't trust your users. Modify the program below 
to require the user to enter the same value twice in order 
to add that value to the total.
=end

=begin  A big assumption I made for this code is that the number needing to be confirmed 
is the first number that the user attempts to input is the number needing to be confirmed
until it is confirmed.
=end

puts "Hello! We are going to total some numbers!"
puts "Enter the number you would like to add twice to confirm. Your number will not be added if not confirmed."
puts "Enter a negative number to quit."

# Instantiate a counter and get user input
total = 0
input = gets.chomp.to_i

=begin Get input from user again if it is not greater than -1.
Prompt user to confirm number. Continue to prompt until the user conrims.
Add the user input to the total each time they confirm the number
=end
while input > -1
  input2 = gets.chomp.to_i

  while input2 != input
    puts "Please confirm your entry."
    input2 = gets.chomp.to_i
  end

  total += input
  input = gets.chomp.to_i
end

# Create an input space for the user to confirm their exit of the calculator
exput = []
while exput != input
  puts "Please confirm your exit with the same number"
  exput = gets.chomp.to_i
end

# Print result
puts "Result: #{total}"
