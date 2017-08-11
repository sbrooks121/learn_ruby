def translate sentence

  words = sentence.split(" ")

  for i in 0...words.length do
    words[i] = translate_word words[i]
  end

  sentence = words.join(" ")

end

def translate_word word
  if word[0] == 'a' || word[0] == 'e' || word[0] == 'i' || word[0] == 'o' || word[0] == 'u'
    # if first letter is a vowel
    return word + "ay"
  elsif word[1] == 'a' || word[1] == 'e' || word[1] == 'i' || word[1] == 'o' || word[1] == 'u'
    #if second letter is a vowel
    if word[0] == 'q' && word[1] == 'u'
      return word[2...word.length] + word[0] + word[1] + "ay"
    else
      return word[1...word.length] + word[0] + "ay"
    end
  elsif word[2] == 'a' || word[2] == 'e' || word[2] == 'i' || word[2] == 'o' || word[2] == 'u'
    #if third letter is a vowel
    if word[1] == 'q' && word[2] == 'u'
      return word[3...word.length] + word[0] + word[1] + word[2] + "ay"
    else
      return word[2...word.length] + word[0] + word[1] + "ay"
    end
  else
    #if first three letters of consonants
    return word[3...word.length] + word[0] + word[1] + word[2] + "ay"
  end
end
