=begin Create an election program that accepts input from
 the user and outputs the winner of the election

    Input: Poll 10 people for their election vote
    Output: Print the total votes cast as well as the winner of the election
=end

# Prompt user to vote and list options
puts "Hello, it's time to exercise your right to VOTE (for cutest animated teddy bear of all time)."
puts "Your election options are Winnie the Pooh, Little Bear, and Paddington Bear"

# Instantiate count to count number of voters
# Instantiate counters for each candidate's votes
i = 1
pooh_count = 0
little_bear_count = 0
paddington_count = 0

# Instantiate hash for possible misspellings of candidate names with misspellings as keys and correct spelling as value.

misspellings = { "WINNIE THE POOH" => "Winnie the Pooh", "POOH BEAR" => "Winnie the Pooh", "POOH" => "Winnie the Pooh",
                 "WINNIE THE POOH BEAR" => "Winnie the Pooh", "WINNY THE POOH" => "Winnie the Pooh", "POO BEAR" => "Winnie the Pooh",
                 "LITTLE BEAR" => "Little Bear", "L'IL BEAR" => "Little Bear", "LIL BEAR" => "Little Bear", "LIL B" => "Little Bear",
                 "PADDINGTON BEAR" => "Paddington Bear", "PADDINGTON" => "Paddington Bear", "PADINGTON BEAR" => "Paddington Bear" }

# Get input from first 9 voters by prompting them
while i < 10
  puts "Who are you voting for?"
  puts "Vote ##{i}:"
  vote = gets.chomp.upcase

  # Input validation with re-prompt
  while !misspellings.has_key?(vote)
    puts "I'm sorry, I didn't understand your choice. Please try again."
    vote = gets.chomp.upcase
  end

  # Increment each candidate's vote count by one for each vote they recieved, whether misspelled or not
  if misspellings[vote] == "Winnie the Pooh"
    pooh_count += 1
  elsif misspellings[vote] == "Little Bear"
    little_bear_count += 1
  elsif misspellings[vote] == "Paddington Bear"
    paddington_count += 1
  end

  # Display user's vote and prompt for next voter. Increase voter count by 1
  puts "Thank you for your vote for #{misspellings[vote]}.\n 
            Next voter please!"
  i += 1
  puts ""
end

# Obtain vote of final voter and display it.
puts "Who are you voting for?"
vote = gets.chomp.upcase
while !misspellings.has_key?(vote)
  puts "I'm sorry, I didn't understand your choice. Please try again."
  vote = gets.chomp.upcase
end

if misspellings[vote] == "Winnie the Pooh"
  pooh_count += 1
elsif misspellings[vote] == "Little Bear"
  little_bear_count += 1
elsif misspellings[vote] == "Paddington Bear"
  paddington_count += 1
end

puts "Thank you for your vote for #{misspellings[vote]}.\n"
puts ""

# Summary of Votes. Display vote count for each candidate. Display a different message if they recieved only 1 vote
puts "~~*~~ELECTION RESULTS~~*~~"
puts ""
puts "***Vote Summary***"
puts ""

if pooh_count != 1
  puts "Winnie the Pooh - #{pooh_count} votes"
else puts "Winnie the Pooh - #{pooh_count} vote" end

if little_bear_count != 1
  puts "Little Bear - #{little_bear_count} votes"
else puts "Little Bear - #{little_bear_count} vote" end

if paddington_count != 1
  puts "Paddington Bear - #{paddington_count} votes"
else puts "Paddington Bear - #{paddington_count}vote" end

# Set the first candidate's count as the current max to determine the winner. Adjust as the following candidates have higher votes
# Account for ties by concatenating on the new additional winner when the current max equals new cnadidate's vote count

current_max = pooh_count
current_winner = "Winnie the Pooh"

if little_bear_count > current_max
  current_max = little_bear_count
  current_winner = "Little Bear"
elsif little_bear_count == current_max
  current_winner << " & Little Bear"
end

if paddington_count > current_max
  current_max = paddington_count
  current_winner = "Paddington Bear"
elsif paddington_count == current_max
  current_winner << " & Paddington Bear"
end
puts ""

# Print message for winner. If there is a tie print message about tie.
if current_winner == "Winnie the Pooh" || current_winner == "Little Bear" || current_winner == "Paddington Bear"
  puts "The winner is #{current_winner}! HOORAY!"
else
  puts "UNPRECEDENTED! There's been a tie! The winners are #{current_winner}!"
end
