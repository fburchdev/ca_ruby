 = { BlackSwan: 4
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
    puts "Please enter a title to update: "
    title = gets.chomp
    if movies[title.to_sym].nil?
        puts "#{title} does not exist. Please add movie before updating."
    else
        puts "Please enter a new 1-4 rating for #{title}: "
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
        puts "#{title} updated with new rating of #{rating}"
    end
when "display"
    movies.each do |movie, rating|
        puts "#{movie}: #{rating}"
    end
when "delete"
    puts "Deleted!"
else
    puts "Error!"
end


