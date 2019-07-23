def average(num1, num2)
    return ((num1 + num2) / 2.0)
end


def average_array(array)
    a = array.inject do |acc, ele|
        acc += ele
    end
    return a.to_f/array.length
end


def repeat(string, num)
    return string*num
end


def yell(string)
    return string.upcase + '!'
end


def alternating_case(sentence)
    words = sentence.split(' ')
    i = 1
    final = ''
    while i <= words.length do
        if i % 2 == 0
            final += words[i-1].downcase + ' '
            i += 1
        else
            final += words[i-1].upcase + ' '
            i += 1
        end
    end
    return final.strip
end