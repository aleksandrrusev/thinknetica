months = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

print "Enter the day: "
day = gets.to_i
print "Enter month number: "
month = gets.to_i - 1

print "Enter year: "
year = gets.to_i

months[1] = 29 if year % 4 == 0 && year % 100 != 0 || year % 400 == 0
month > 0 ? num = months.first(month).reduce(:+) + day : num = day
print "Ordinal number of the entered day #{num}.\n" 
