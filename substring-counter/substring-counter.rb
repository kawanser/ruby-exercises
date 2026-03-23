dictionary = [
  "below","down","go","going","horn",
  "how","howdy","it","i",
  "low","own","part","partner","sit"
]

def substring(string, dictionary)
  counter = Hash.new(0)
  string_arr = string.split(' ')

  for word in string_arr
    for dict_word in dictionary
      if word.include?(dict_word)
        counter[dict_word] += 1
      end
    end
  end
  return counter
end

puts substring("below", dictionary)
puts substring("Howdy partner, sit down! How's it going?", dictionary)