print "Hi! What's your name? \n"
user_name = gets.chomp.capitalize

print "#{user_name}, what's your height? \n"
user_height = gets.chomp.to_f

ideal_weight = user_height - 110

if ideal_weight <= 0
  print "Great news #{user_name}, your weight is already optimal!"
else
  print "#{user_name}, seems to be your perfect weight is #{ideal_weight}kg."
end