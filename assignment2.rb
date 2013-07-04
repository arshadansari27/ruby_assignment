def get_sum(n) 
    val = 0
    0.upto n do |i|
        if i % 3 == 0 or i % 5 == 0
            val += i
        end
    end
    val
end

puts get_sum 1000
