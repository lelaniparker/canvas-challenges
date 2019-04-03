person = {name: 'John', height: '2m', weight: '70kgs'}

person[:occupation] = "web developer"
person[:hobbies] = "art"
person.delete(:weight)
puts person

puts person[:height]

person.each do |key, value|
    puts "Key: #{key}, value: #{value}"
end

