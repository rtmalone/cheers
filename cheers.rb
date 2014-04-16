# my_array = ["foo", "bar", "grille"]


#my_array.each do |item|
#  puts item.capitalize
#end

puts "What's your name?"
name = gets.chomp
#puts "Your name is:" + name
name.each_char do |character|
  if character.downcase == "a" or character.downcase == "e" or character.downcase == "i" or character.downcase == "o" or character.downcase == "u"
    puts "Give me an " + character
  else
    puts "Give me a  " + character
  end
end
puts name.upcase + "'s just GRAND"
