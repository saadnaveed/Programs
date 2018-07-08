continue = true

while(continue) do
	puts "Here we are in a loop, shall we go again? (t/f)"
	check = gets.chomp
	if check == 'f'
		puts "THE END!"
		continue = false
	end
end
