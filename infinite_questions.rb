input = nil

while input != "no" do
  puts "Can I get you anything?"
  print "> "
  input = gets.chomp
  require 'pry'
  binding.pry
end

puts "Okay, bye!"
