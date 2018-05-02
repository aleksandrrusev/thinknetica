shopping_cart = {}
total_purchase_price = 0
print "Hi! Let's start shopping. You can stop writing the word \"stop\"!\n"
loop do
  print "Enter product name: "
  product_name = gets.chomp.to_s
  break if product_name == "stop"
  print "Enter price: "
  product_price = gets.to_f
  print "Enter quantity: "
  product_num = gets.to_i
  shopping_cart[product_name.to_sym] = { price: product_price, number: product_num }
end

print shopping_cart

shopping_cart.each do |product, value|
  total_price = value[:price] * value[:number]
  print "Product: #{product} cost: #{total_price}\n"
  total_purchase_price += total_price
end

print "The total price is #{total_purchase_price}"
