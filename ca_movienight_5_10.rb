movies = { BlackSwan: 4
    }
    
puts "Please enter either add, update, display, or delete: "
choice = gets.chomp

case choice
when "add"
    puts "Please enter a title: "
    title = gets.chomp
    puts "Please enter a rating of 1 - 4: "
    rating = gets.chomp
    movies[title.intern] = rating.to_i
    #.to_sym would also work for title but C.A. wants .intern as suggested in hint
when "update"
    puts "Updated!"
when "display"
    puts "Movies!"
when "delete"
    puts "Deleted!"
else
    puts "Error!"
end


