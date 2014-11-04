#1 THERMOMETER

# puts "Type '1' to convert from Celsius to Fahrenheit OR type '2' to convert from Fahrenheit to Celsius"
# type = gets.chomp
# if type == "1" 
# puts "Enter Celsius temparature:"
# figure_c= gets.chomp.to_f
# figure_c_inf= (figure_c*9)/5+32
# puts "#{figure_c} Celsius is equal to #{figure_c_inf} Fahrenheit"
# elsif type == "2" 
# puts "Enter Celsius temparature:"
# figure_f= gets.chomp.to_f
# figure_f_inf= (figure_f-32)*5/9
# puts "#{figure_c} Fahrenheit is equal to #{figure_c_inf} Celsius"
# else
# 	puts "Please enter 1 or 2."
# end

#2 CALCULATOR

# puts "What calculation would you like to do? (add, sub, mult, div)?"
# type = gets.chomp
# if type == "add"
# 	puts "What is number 1?"
# 	num1 = gets.chomp.to_f
# 	puts "What is number 2?"
# 	num2 = gets.chomp.to_f
# 	res = num1+num2
# 	puts "Your result is #{res}"
# elsif type == "sub"
# 	puts "What is number 1"
# 	num1 = gets.chomp.to_f
# 	puts "What is number 2"
# 	num2 = gets.chomp.to_f
# 	res = num1-num2
# 	puts "Your result is #{res}"
# elsif type == "mult"
# 	puts "What is number 1"
# 	num1 = gets.chomp.to_f
# 	puts "What is number 2"
# 	num2 = gets.chomp.to_f
# 	res = num1*num2
# 	puts "Your result is #{res}"
# elsif type == "div"
# 	puts "What is number 1"
# 	num1 = gets.chomp.to_f
# 	puts "What is number 2"
# 	num2 = gets.chomp.to_f
# 	res = num1/num2
# 	puts "Your result is #{res}"
# else
# 	puts "Please add a valid calculation type."
# end

#3 WORD COUNT

# def word_count
# 	puts "Enter your sentence"
# 	words = gets.chomp.split(" ")
# 	counts = Hash.new 0

# 	words.each do |word|
# 		counts[word] += 1
# end
# puts counts
# end
# word_count

#4 BANK TRANSACTIONS

# def check_done
# 	puts "Would you like to use another service (yes or no)?"
# 	another_service = gets.chomp
# 	if another_service == "yes"
# 		welcome
# 	elsif another_service == "no"
# 		puts "Thanks, see you again soon!"
# 	else 
# 		puts "Please enter a valid selection - yes or no."
# 	end
# end

# def balance
# 	puts "Your balance is #{$balance}."
# 	check_done
# end

# def withdraw
# 	puts "How much would you like to withdraw?"
# 	num1 = gets.chomp.to_f
# 	$balance -= num1
# 	puts "Thanks, your new balance is #{$balance}. Don't forget to take your cash."
# 	check_done
# end

# def deposit
# 	puts "How much would you like to deposit?"
# 	num1 = gets.chomp.to_f
# 	$balance += num1
# 	puts "Thanks, your new balance is #{$balance}."
# 	check_done
# end

# def welcome
# 	puts "Would you like to display your balance, withdraw or deposit (balance, withdraw, deposit)?"
# 	trans = gets.chomp
# 	if trans == "balance"
# 		balance
# 	elsif trans == "withdraw"
# 		withdraw
# 	elsif trans == "deposit"
# 		deposit
# 	else 
# 		puts "Please enter a valid transaction type."
# 		welcome
# 	end
# end
# $balance = 4000
# welcome

#5 GUESSING GAME

# def checker
# 	if $num == $secret_num
# 		puts "You guessed it! The secret number is #{$secret_num}. Attempts: #{$attempts}."
# 	elsif $num > $secret_num
# 		guess
# 	else $num < $secret_num
# 		puts "The number is higher than #{$num}. Guess again. Attempts to far: #{$attempts}."
# 		guess
# 	end
# end

# def guess
# 	$num = gets.chomp.to_i
# 	if $num < 100 && $num > 1
# 	$attempts += 1
# 	checker
# 	else
# 	puts "Please pick a number within the given range"
# 	guess	
# 	end
# end
# $secret_num = 30 
# $attempts = 0
# puts "Guess a number between 1 and 100!"
# guess

#BONUS



# def add_student

# puts "Would you like to add another student (yes or no)?"
# y_or_n = gets.chomp
# 	if y_or_n == "yes"
# 		puts "What is the student's name?"
# 		newstudent = gets.chomp
# 		$students<<newstudent
# 		puts "The students are #{$students}"
# 	elsif y_or_n == "no"
# 		puts "Here is a summary of your student array:"
# 		puts "The students are #{$students}.each_with_index"
# 		# Puts check out($students).each_with_index
# 	end
# end
# $students = ["Yin", "Lauren", "Raj"]
# puts "The students are #{$students}"
# add_student 

def add_student

puts "Would you like to add another student (yes or no)?"
y_or_n = gets.chomp
	if y_or_n == "yes"
		puts "What is the student's name?"
		newstudent = gets.chomp
		$students<<newstudent
		puts "The students are #{$students}"
	elsif y_or_n == "no"
		puts "Here is a summary of your student array:"
		# $students.each_with_index{|val, index| puts "#{$students} => #{index}" }
		$students.each do
			|student| puts "The student at #{$students.index(student)} is #{student}"
		end
	else 
		puts "Please enter a valid response"
	end
end
$students = ["Yin", "Lauren", "Raj"]
puts "The students are #{$students}"
add_student 