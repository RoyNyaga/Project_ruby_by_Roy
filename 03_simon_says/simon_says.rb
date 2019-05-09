#write your code here

def echo (word)
  return word
end

def shout(word)
  return word.upcase
end

# def repeat(word)
#   result = word +" "+ word
#   return result
# end

# puts repeat("hello")

def repeat(word, num=2)
  result = ""
  counter = 0
  num.times do |value|
    if value+1 == num
      result += word
    else
      result += word + " "
    end
  end
  return result
end

def start_of_word(word, num)
  string = ""
  num.times do |value|
    string += word[value]
  end
  return string
end

def first_word(word)
  string = ""
  length = word.length
  length.times do |value|
    if word[value] != " "
      string += word[value]
    else
      return string
    end
  end
end

def titleize(word)
  collect_caps_words = []
  exception = ["and", "over", "the"]
  array = word.split(" ")
  length_of_array = array.length
  length_of_array.times do |index|
    if exception.include?array[index]
      if index == 0
        caps_word = array[index].capitalize
        collect_caps_words.push caps_word
      else
        caps_word = array[index]
        collect_caps_words.push caps_word
      end
    else
      caps_word = array[index].capitalize
      collect_caps_words.push caps_word
    end
  end
  return collect_caps_words.join(" ")
end
# puts titleize("and over the ocean")
