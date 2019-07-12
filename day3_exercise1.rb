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