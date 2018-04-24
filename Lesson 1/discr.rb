print "Hi! insert the value and we try to find discriminant & roots.\nInsert A value: "
a = gets.to_f

print "Insert B value: "
b = gets.to_f
print "Insert C value: "
c = gets.to_f

discr = b**2 - 4 * a * c

if discr > 0 
  sq_discr = Math.sqrt(discr)
  x1 = (- b + sq_discr) / (2 * a)
  x2 = (- b - sq_discr) / (2 * a)
  print "Discriminant: #{discr}, first root: #{x1}, second root: #{x2}."
elsif discr == 0
  x1 = - b / (2 * a)
  print "Discriminant: #{discr}, root #{x1}."
else
  print "Discriminant: #{discr}, and no roots."
end
