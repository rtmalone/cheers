# my_array = ["foo", "bar", "grille"]


#my_array.each do |item|
#  puts item.capitalize
#end

puts "What's your name?"
name = gets.chomp.upcase
#puts "Your name is:" + name
name.each_char do |character|
  if character == "A" or character == "E" or character == "I" or character == "O" or character == "U"
    puts "Give me an.." + character
  else
    puts "Give me a..." + character
  end
end
puts name + "'s just GRAND"
