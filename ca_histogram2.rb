puts "Text please: "
text = gets.chomp
words = text.split(" ")
frequencies = Hash.new(0)
words.each do |word|
    frequencies[word] +=1
end
frequencies = frequencies.sort_by { |k, v| v }
frequencies.reverse!
frequencies.each do |k,v|
    puts k + " " + v.to_s
end