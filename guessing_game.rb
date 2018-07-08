puts "Welcome to the Guessing Game! What difficulty would you like to play?"
puts "Type easy or hard:"
print "> "
input = gets.chomp
random = 0
score = 0

if input == "easy"
  random = rand(10) + 1
  puts "I've picked a number between 1 and 10. Now guess it!"
elsif input == "hard"
  random = rand(20) + 1
  puts "I've picked a number between 1 and 20. Now guess it!"
end
require 'pry'
binding.pry
guess = nil

while guess != random do
  print "> "
  guess = gets.chomp.to_i
  score += 1

  if guess != random
    puts "Nope, try again!"
  end
end

puts "You win! Nice Job!"
puts "Your score was: #{score}"
