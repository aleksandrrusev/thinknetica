cart = {}
total_purchase_price = 0
print "Hi! Let's start shopping. You can stop writing the word \"stop\"!"
loop do
  print "Enter product name: "
  product_name = gets.chomp.to_s
  break if product_name == "stop"
  print "Enter price: "
  product_price = gets.to_f
  print "Enter quantity: "
  product_num = gets.to_i
  cart[product_name.to_sym] = { price: product_price, number: product_num }
end

print cart

cart.each do |k, v|
  total_price = v[:price] * v[:number]
  print "Product: #{k} cost: #{total_price}"
  total_purchase_price += total_price
end

print "The total price is #{total_purchase_price}"
