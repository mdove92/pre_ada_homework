# Class 2 Exercises

# Problem 1
puts "Prompt for a number. If the number is greater than 70, print PASSING; otherwise, print NOT PASSING"
    #Obtain number and display message of passing for values over 70. 
    #For all other numbers display not passing
    puts "Enter a number here"
    number=gets.chomp.to_i
        if number > 70 
          puts "Passing"
        elsif puts "NOT PASSING"
        end

# Problem 2
puts "Prompt for a string. If the string is equal to green, print GO, otherwise, print STOP."
    # Obtain input from user and display message GO if value is "green" otherwise display stop
    puts "Type what you like:"
    input=gets.chomp
        if input.downcase == "green" 
          puts "GO"
        else "STOP"
        end

# Problem 3
puts "Prompt for a number. If the number is even, print EVEN, otherwise, print ODD."
    # Obtain number and display "EVEN", if number is evenly divisble by 2, otherwise, display "ODD"
    puts "Please enter a number"
    number2=gets.chomp.to_i 
    if number2 % 2 == 0 
        puts "EVEN"
    else 
        puts "ODD"
    end

# Problem 4
puts "Prompt for a number. If the number is evenly divisible by 5, print MULTIPLE OF 5, otherwise,
     print NOT A MULTIPLE OF 5."
 # Prompt for number, receive user input and determine remainder of input divided by 5. Print if 
 # user's number is divible by 5
   puts "Please enter a number"
     number3=gets.chomp.to_i
    if number3 % 5 == 0 
        puts "MULTIPLE OF 5"
    else 
        puts "NOT A MULTIPLE OF 5"
    end

#Problem 5
puts "Prompt for a number. If the number is less than 10, print ONE DIGIT. If the number is 100 or
     greater, print THREE DIGITS, otherwise print TWO DIGITS."
     # Obtain user input of number, then determine if number is one, two, or three digits and 
     # prints number of digits.
     puts "Please enter your number"
     number4 = gets.chomp.to_i
    if number4 < 10 
        puts "ONE DIGIT"
    elsif number4 >= 100 
        puts "THREE DIGITS"
    else 
        puts "TWO DIGITS"
    end

# Problem 6
puts "Prompt for a jersey number. If that number is 12, 71, or 80, print That number is retired from
     the Seattle Seahawks!, otherwise do nothing."
# User input is assigned to variable jersey. If Jersey is 12, 71, or 80, then a statement is put 
# indicating the number is retired. 
puts "Tell me a Jersey number"
jersey=gets.chomp.to_i
if jersey == 12 || jersey == 71 || jersey == 80    
  puts "That number is retired from the Seattle Seahawks!"
#This else statement is a placeholder fo rthe program to do nothing if the input 
# doesn't match the numbers above
else 
  puts ""
end
       
# Problem 7
puts "Prompt for a state. If the state is Washington, Oregon, or Idaho, print This state is in the PNW,
     otherwise print You should move to the PNW; it’s great here!"
# Obtain a state from the user and determine if the state is WA, OR, or ID. If it is, 
# print statement indicating so, otherwise print statement saying to move here. 
     puts "In which state do you live?"
    state = gets.chomp
    if state.capitalize == "Washington" || state.capitalize == "Oregon" || state.capitalize == "Idaho"
        puts "This state is in the PNW"
    else 
        puts "You should move to the PNW; it's great here!"
    end

# Problem 8
puts "Prompt for a one of the following: SHORT, TALL, GRANDE, VENTI. Print out the number of ounces 
    that drink includes (8, 12, 16, 20 respectively)."
# Obtain input from user on drink size. Communicate drink size in ounces to user per input.
    puts "Please choose which of these drink sizes you would like: SHORT, TALL, GRANDE, VENTI"
    size = gets.chomp
    if size.upcase == "SHORT" 
      puts "Your drink will be 8 ozs."
    elsif size.upcase == "TALL" 
      puts "Your drink will be 12 ozs."
    elsif size.upcase == "GRANDE" 
      puts "Your drink will be 16 ozs."
    elsif size.upcase == "VENTI" 
      puts "Your drink will be 20 ozs."
    end

# Problem 9
puts "Prompt for rate of pay and hours worked. Calculate gross pay. Provide time-and-a-half for hours 
    worked beyond 40 (e.g., if you get paid $10/hr and work 45 hours in a week, you would gross $475
     (40 x 10 + 5 x 15)."
# Obtain user input on rate of pay and hours worked in a week 
     puts "What is your hourly pay?"
     rate = gets.chomp.to_i
     puts "How many hours did you work this week?"
     hours = gets.chomp.to_i
     # Calculate gross pay using obtained rate and hours for values under or equal to 40
    if hours <= 40
      gross=rate*hours
      puts "Your gross pay this week was $#{gross}"
      # Calculate gross pay using obtained rate and hours for values over 40 including overtime
    elsif hours > 40
      gross1 = (rate * 40) + ((rate * 1.5) * (hours - 40))
      puts "Your gross pay this week was $#{gross1}"
    end


puts "Rewrite the solution to the previous problem adding this modification: do not process any 
    employee if their hours worked is greater than 60, instead display the message Please see manager."
# Obtain user input on rate of pay and hours worked in a week 
puts "What is your hourly pay?"
rate = gets.chomp.to_i
puts "How many hours did you work this week?"
hours = gets.chomp.to_i
gross = rate*hours
# Display message to see manager if user has indicated that they worked greater than 60 hours
# For values between 40 and 60 calculate gross pay including overtime pay
# For all other values calculate gross pay
    if hours >  60  
        puts "Please see Manager"
    elsif hours > 40 && hours <= 60
        gross1 = (rate * 40)+((rate * 1.5) * (hours - 40))   
        puts "Your gross pay this week was $ #{ gross1 }"
    else
        puts "Your gross pay this week was $#{ gross }"
    end
