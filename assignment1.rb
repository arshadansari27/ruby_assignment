def fizzbuzz(n) 
    0.upto n do |i|
        if i % 15 == 0
            puts "#{i} fizz-buzz"
        elsif i % 3 == 0
            puts "fizz"
        elsif i % 5 == 0
            puts "#{i} buzz"
        else
            puts "#{i} Not divisible"
        end
    end
end

fizzbuzz 100
