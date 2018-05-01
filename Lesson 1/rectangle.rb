print "Let's define the type of triangle!\nWhat is \"a\" side of triangle: "
a = gets.to_f

print "What is \"b\" side of triangle: "
b = gets.to_f

print "What is \"c\" side of triangle: "
c = gets.to_f

x = [a, b, c].sort
rect = (x[2] ** 2).round(1) == (x[0] ** 2 + x[1] ** 2).round(1)
if rect && x[0] == x[1]
  print "It is a rectangular and isosceles triangle.\n" # прямоугольный и равнобедренный
elsif rect
  print "It is an rectangular triangle.\n" # прямоугольный
elsif x[2] == x[0] && x[2] == x[1] 
  print "It is an equilateral triangle.\n" # равносторонний
else
  print "Ooops! Not rectangular triangle.\n"
end
