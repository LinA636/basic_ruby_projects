require 'pry-byebug'

def caeserCipher(text, shift)
  text_array = text.split("")

  cipher_array = text_array.map do |letter|
    ascii_number = letter.ord
    if ascii_number.between?(97, 122)
      letter = adjustDownLetter(ascii_number, shift).chr
    elsif ascii_number.between?(65, 90)
      letter = adjustUpLetter(ascii_number, shift).chr
    else
      letter = letter
    end
  end
  cipher_array.join
end

def adjustDownLetter(number, shift)
  if (number + shift).between?(97, 122)
    number += shift
  elsif (number + shift) > 122
    diff = number + shift - 122
    number = 96 + diff
  else
    diff = 97 - number - shift - 1
    number = 122 - diff
  end
  return number
end

def adjustUpLetter(number, shift)
  if (number + shift).between?(65, 90)
    number += shift
  elsif (number + shift) > 90
    diff = number + shift - 90
    number = 64 + diff
  else
    diff = 65 - number - shift -1
    number = 90 - diff
  end
  return number
end

text = "What a string!"
shift = 5
p caeserCipher(text, shift)
