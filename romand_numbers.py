length_one = {1: 'I', 5: 'V', 10: 'X'}
length_two = {1: 'X', 5: 'L', 10: 'C'}
length_three = {1: 'C', 5: 'D', 10: 'M'}
length_four = {1: 'M'}


def convert_to_roman(value):
    if value > 1000:
        raise Exception("Not supported yet")
    pos_list = get_digits_with_position(value)
    keys = sorted(pos_list.keys())
    keys.reverse()
    roman = []
    for key in keys:
        val = get_number_val(pos_list[key], key)
        roman.append(val)
    return "".join(roman)

def get_digits_with_position(number):
    value = str(number)
    pos_list = {}
    for i in range(0, len(value)):
        pos_list[len(value) - i] = value[i]
    return pos_list

def get_number_val(number, length):
    if length is 0:
        raise Exception('Invalid length')
    elif length is 1:
        length_list = length_one
    elif length is 2:
        length_list = length_two
    elif length is 3:
        length_list = length_three
    else:
        length_list = length_four
    number = int(number)
    if number == 0:
        return ''
    elif number < 4:
        x = length_list[1] * int(number)
        return  x
    elif number == 4:
        x = length_list[1] + length_list[5]
        return x
    elif number == 5:
        x = length_list[5]
        return x
    elif number == 9:
        x = length_list[1] + length_list[10]
        return x
    else:
        nn = int(number) - 5
        x = length_list[5] + length_list[1] *  nn
        return x

#for i in range(0, 10):
#   print get_number_val(i, 1)


for i in range(0, 1001):
    print i, convert_to_roman(i)
