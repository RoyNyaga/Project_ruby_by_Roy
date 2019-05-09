#write your code here

def translate(word)
  splited_word = word.split(" ")
  vowel = "aeio"
  phoneme = "qu"
  total_words = []
  check_phoneme = ""
  for elements in splited_word
    check_phoneme += elements[0,2]
    first_consonant_check = elements[0]
    word_length = elements.length
    if vowel.include?elements[0]
      translated_word = elements += "ay"
      total_words.push translated_word
    elsif !vowel.include?elements[0] and !vowel.include?elements[1] and !vowel.include?elements[2]
      remaining_letters = elements[3, word_length]
      first_two_letters = elements[0,3]
      translated_word = (remaining_letters += first_two_letters += "ay")
      total_words.push translated_word
    elsif !vowel.include?elements[0] and !vowel.include?elements[1] or check_phoneme == phoneme
      remaining_letters = elements[2, word_length]
      first_two_letters = elements[0,2]
      translated_word = (remaining_letters += first_two_letters += "ay")
      total_words.push translated_word
    else
      remaining_letters = elements[1, word_length]
      first_letter = elements[0]
      translated_word = (remaining_letters += first_letter += "ay")
      total_words.push translated_word
    end
  end
    return total_words.join(" ")
end
