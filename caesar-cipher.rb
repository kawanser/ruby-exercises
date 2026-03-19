def caesar_cipher(sentence, shift)
  converted_message = ""
  sentence.chars.map do |letter|
    if letter.ord >= "A".ord && letter.ord <= "Z".ord
      letter = ((letter.ord - "A".ord + shift) % 26 + "A".ord).chr
      converted_message += letter
    elsif letter.ord >= "a".ord && letter.ord <= "z".ord
      letter = ((letter.ord - "a".ord + shift) % 26 + "a".ord).chr
      converted_message += letter
    else
      converted_message += letter
    end
  end
  return converted_message
end

puts caesar_cipher("What a string!", 5)
