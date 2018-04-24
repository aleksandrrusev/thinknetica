print "Let's define the type of triangle!\nWhat is \"a\" side of triangle: "
a = gets.to_f

print "What is \"b\" side of triangle: "
b = gets.to_f

print "What is \"c\" side of triangle: "
c = gets.to_f

x = [a, b, c].sort

if (x[2] ** 2) == (x[0] ** 2 + x[1] ** 2)
elsif a == b && b == c
  puts "It is an equilateral triangle."
elsif a == b || a == c || b == c
  print "It is a rectangular and isosceles triangle."
else
  puts "It is not a rectangular triangle."
end
