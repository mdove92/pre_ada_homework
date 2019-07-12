puts "Hello, what is the length of your room (in ft)?"
length=gets.chomp.to_f
puts "Tell me the width of your room (in ft)"
width=gets.chomp.to_f
sq_ft=length*width
puts "The square footage of your room is #{ sq_ft }"