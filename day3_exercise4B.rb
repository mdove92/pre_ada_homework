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

# Print resuly
puts "Result: #{total}"
