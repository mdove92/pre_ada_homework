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
