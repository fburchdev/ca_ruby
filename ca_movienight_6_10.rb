movies = { BlackSwan: 4
    }
    
puts "Please enter either add, update, display, or delete: "
choice = gets.chomp

case choice
when "add"
    puts "Please enter a title: "
    title = gets.chomp
    if movies[title.to_sym].nil?
        puts "Please enter a rating of 1 - 4: "
        rating = gets.chomp
        movies[title.intern] = rating.to_i
        puts "#{title} has been added with a rating of #{rating}."
    else
        puts "#{title} already exists!"
    end
when "update"
    puts "Updated!"
when "display"
    puts "Movies!"
when "delete"
    puts "Deleted!"
else
    puts "Error!"
end

# oddly, CA allowed this to pass even when
# the if block in the add case began _after_ line 14,
# where the movie is added into the hash, producing a logic error 