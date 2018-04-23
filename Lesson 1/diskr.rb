print "Hi! insert the value and we try to find discriminant & roots.\nInsert A value: "
a_value = gets.chomp.to_f

print "Insert B value: "
b_value = gets.chomp.to_f
print "Insert C value: "
c_value = gets.chomp.to_f

diskr = b_value**2 - 4 * a_value * c_value

if diskr > 0 
  sq_discr = Math.sqrt(diskr)
  x1 = (- b_value + sq_discr) / (2 * a_value)
  x2 = (- b_value - sq_discr) / (2 * a_value)
  print "Discriminan: #{diskr}, first root: #{x1}, second root: #{x2}."
elsif diskr == 0
  x1 = - b_value / (2 * a_value)
  print "Discriminan: #{diskr}, root #{x}."
else
  print "Discriminan: #{diskr}, and no roots."
end
