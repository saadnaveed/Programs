# Part 1 #

sum = 0
puts "Enter your values here!"

while sum < 100 do
  print "> "
  value = gets.chomp
  sum += value.to_f
end

puts "You've reached 100!"

# Part 2 #
if total >= 125
  excess = ((sum - 100) / 25).to_i
  excess.times do
    puts "You've earned another 25!"
  end
end
