require "http"
system "clear"
puts "Please enter what product you would like to view. Options are: first, second, or third"

print "Enter option Below: "
product_input = gets.chomp.downcase

data = HTTP.get("http://localhost:3000/#{product_input}_product.json")
output_product = data.parse(:json)

pp output_product
