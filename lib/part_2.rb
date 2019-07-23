def hipsterfy(word)
    if word.count('aeiou') == 0
        return word
    else
        ninjer = 0
        word.each_char.with_index do |char, idx|
            if 'aeiou'.include?(char)
                ninjer = idx
            end
        end
    end
    return word.slice(0...ninjer) + word.slice(ninjer+1..-1)
end


def vowel_counts(string)
    arr = string.split('')
    ans = Hash.new()
    arr.each do |ele|
        if 'aeiou'.include?(ele.downcase)
            if ans.key?(ele.downcase)
                ans[ele.downcase] += 1
            else
                ans[ele.downcase] = 1
            end
        else
            next
        end
    end
    return ans
end


def caesar_cipher(message, num)
    alphabet = 'abcdefghijklmnopqrstuvwxyz'
    alphaArray = alphabet.split('')
    messageArray = message.split('')
    ans = []

    messageArray.each do |ele|
        if alphabet.include?(ele) == false
            ans << ele
        else
            turnThis = alphaArray.find_index(ele) + num
            useThis = turnThis % alphaArray.length
            ans << alphaArray[useThis]
        end
    end
    return ans.join('')
end