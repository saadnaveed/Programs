puts "Hello, I'm the first and only Talking Vending Machine."
puts "What would you like today?"
print "> "
item = gets.chomp

puts "How many of those would you like?"
print "> "
num_of_items = gets.chomp

# If the string doesn't contain "tons," then this will be true
if num_of_items.index("tons").nil?
  num_of_items.to_i.times do
    puts "#{item}"
  end
else #execute only if it contains tons
  random = rand(14) + 1
  random.times do
    puts "#{item}"
  end
end

puts "There you go! Come again!"
