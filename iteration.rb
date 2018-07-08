instructors = ['Dan', 'DT', 'Jarvis']

# position = 1

# instructors.each do |instructor|
#   puts "#{instructor} is in position #{position}"
#   position += 1
# end
#
# instructors.each_with_index do |instructor, index|
#   puts "#{instructor} is in position #{index + 1}"
# end

# d_instructors = instructors.find_all do |instructor|
#   instructor[0] == 'D'
# end
#
# puts d_instructors.inspect

# numbers = [3,2,1,6,5,4,7]
# puts numbers.sort!.inspect
# puts numbers.inspect

numbers_with_dupe = [1,2,1,3]
puts numbers_with_dupe.uniq!.inspect
puts numbers_with_dupe.inspect

numbers = [3,2,1,6,5,4,7]
numbers.sort!
puts numbers.inspect

doubled_array = []

numbers.each do |num|
  doubled_array << num * 2
end

puts doubled_array.inspect

doubled_array = numbers.map do |num|
  num * 2
end

puts doubled_array.inspect

greetings = instructors.map do |instructor|
  "Hello, #{instructor}"
end

puts greetings.inspect

numbers = [3,2,1,6,5,4,7]
numbers.sort!

sum = numbers.inject(0) do |sum, num|
  sum += num
end

puts sum
