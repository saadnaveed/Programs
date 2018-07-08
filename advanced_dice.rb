puts "How many sides does your dice have?"
sides = gets.chomp.to_i
puts "How many times would you like to roll your pair of dice?"
rolls = gets.chomp.to_i

input = nil

while input != "n" do
  rolls.times do
    dice1 = rand(sides) + 1
    dice2 = rand(sides) + 1
    total = dice1 + dice2

    puts "You rolled a #{dice1} and a #{dice2}. Total: #{total}"
  end
  print "Roll Again? (Y/n)> "

  input = gets.chomp
end
