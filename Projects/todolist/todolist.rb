puts "Welcome! Here are currently your options: "

todo_list = ["Pray 5 times a day", "Read Quran", "Study Coding"]
option = nil

while option != 'x' do
  puts
  puts "Type 'n' for a new todo item to add"
  puts "Type 'd' to delete a todo item by name"
  puts "Type 'd2' to delete a todo item by name"
  puts "Type 'c' to view your current todo list"
  puts "Type 'm' to modify an existing todo item"
  puts "Type 'x' to exit out of this program completely"
  print "\n> "
  option = gets.chomp.downcase
  puts

  if option == 'n'
    puts "What's the name of your new todo item?"
    print "> "
    new_todo = gets.chomp.downcase
    todo_list << new_todo
    puts "ToDO [#{new_todo}] successfully added!"
  elsif option == 'd'
    puts "What's the name of todo item you want to delete?"
    print "> "
    delete_todo = gets.chomp.downcase

    # Make sure the item actually exists
    if todo_list.include?(delete_todo)
      puts "Successfully deleted [#{todo_list.delete(delete_todo)}] from your todo list!"
    else
      puts "Error: That item doesn't exist in your todo list!"
    end
  elsif option == 'd2'
    puts "What's the number of the todo you want to delete?"
    print "> "
    delete_todo_num = gets.chomp.to_i
    delete_item_name = todo_list.delete_at(delete_todo_num - 1)

    # Make sure we don't delete an undefined index
    if !delete_item_name.nil?
      puts "Todo [#{delete_item_name}] successfully deleted!"
    else
      puts "Error: That number does not exist!"
    end
  elsif option == 'c'
    todo_list.each_with_index do |todo, index|
      puts "#{index+1}.) #{todo}"
      puts
    end
  elsif option == 'm'
    puts "Enter the item number you would like to change"
    print "> "
    todo_num = gets.chomp.to_i
    puts "Enter the new name for the item"
    print "> "
    new_todo_name = gets.chomp

    if !todo_list[todo_num - 1].nil?
      todo_list[todo_num - 1] = new_todo_name
      puts "Successfully modified!"
    else
      puts "Error: No todo item exists at that index!"
    end
  elsif option == 'x'
    puts "See ya later!"
  else
    puts "Come on, you know that's not a valid option. Please try again!"
  end
end
