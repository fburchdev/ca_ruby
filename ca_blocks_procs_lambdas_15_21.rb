my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

# Add your code below!
symbol_filter = lambda { |my_param| my_param.is_a? Symbol }
symbols = my_array.select(&symbol_filter)