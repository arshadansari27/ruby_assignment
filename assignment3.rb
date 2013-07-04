$length_one = {1 => 'I', 5 => 'V', 10 => 'X'}
$length_two = {1 => 'X', 5=> 'L', 10=> 'C'}
$length_three = {1=> 'C', 5=> 'D', 10=> 'M'}
$length_four = {1=> 'M'}

def convert_roman(value)
    if value > 1000
        return "Invalid Number"
    end
    pos_list = get_digits_with_position value
    keys = pos_list.keys.sort.reverse
    roman = []
    keys.map do |x| 
        val = get_number_val pos_list[x], x
        roman = roman + [val]
    end
    roman.join("")
end


def get_digits_with_position(number)
    value = number.to_s
    pos_list = {}
    0.upto value.length do |x|
        pos_list = pos_list.merge((value.length - x) =>  value.split('')[x])
    end
    pos_list
end

def get_number_val(number, length)
    case length
    when 0
        return ''
    when 1
        length_list = $length_one
    when 2
        length_list = $length_two
    when 3
        length_list = $length_three
    else
        length_list = $length_four
    end

    number = number.to_i
    if number == 0
        return ''
    elsif number < 4
        return length_list[1] * number
    elsif number == 4
        return length_list[1] + length_list[5]
    elsif number == 5
        return length_list[5]
    elsif number == 9:
        return length_list[1] + length_list[10]
    else
        return length_list[5] + (length_list[1] * (number - 5))
    end
end


0.upto 10 do |x| 
    puts convert_roman(x)
end
