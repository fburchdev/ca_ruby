def double(number)
    yield(number)
end

double(3) { |n| n*2 }
