souq_cart = []
unavailable_items = Array.new
available_items = ["old paperback book", "potato", "red onion", "dried lemon", "frankincense", "medicinal herbs", "saffron", "glass spice jar", "red fabric", "orange fabric", "handicrafts", "small Persian rug", "medium Persian rug", "large Persian rug", "extra large Persian rug"]
name = ""

puts "Welcome to my store! What's your name, shopper?"
name = gets.chomp

puts "Great to meet you, #{name}. Here's the list of items you can add to your cart:"
print "\n"
available_items.each do |item|
  puts "* #{item}"
end
puts

while true do

  puts "What items would you like to add to your cart? Type 'FINISHED' to complete your order."
  print "> "

  item = gets.chomp.downcase

  if item == "finished"
    break
  elsif available_items.include?(item)
    souq_cart << item
  else
    unavailable_items << item
    puts "Sorry, that item isn't in the list!"
  end
end

puts "#{name}, thanks for trying our online Souq platform. Here is the list of items in your cart!:"
print "\n"

souq_cart.each do |item|
  puts "* #{item}"
end
puts

puts "Btw, we noticed you tried entering in some items that aren't part of the online
Souq. We don't have the following items yet but will let you know if they show
up!:"
puts

unavailable_items.each do |item|
  puts "* #{item}"
end
