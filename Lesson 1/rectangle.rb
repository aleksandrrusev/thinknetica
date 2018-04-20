print "Let's define the type of triangle!\nWhat is \"a\" side of triangle: "
a_side = gets.chomp.to_f

print "What is \"b\" side of triangle: "
b_side = gets.chomp.to_f

print "What is \"c\" side of triangle: "
c_side = gets.chomp.to_f

if a_side == b_side && a_side == c_side
  puts "It is an equilateral triangle."
elsif a_side == b_side || a_side == c_side || b_side == c_side
  print "It is a rectangular and isosceles triangle."
else
  puts "It is not a rectangular triangle."
end