def greeter
    yield
    puts "Greetings!"
end

phrase = Proc.new { puts "Hello there!" }

greeter(&phrase)