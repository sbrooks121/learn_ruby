#write your code here
def echo(word)
  word
end

def shout(word)
  word.upcase
end



def repeat(word, number = 1)
  if number == 1
    word_string = word + ' ' + word
  else
    word_string = word
    number = number - 1
    number.times do
      word_string = word_string + ' ' + word
    end
  end
  word_string
end

def start_of_word(word, number = 0)
  start = word[0,number]
end

def first_word(word)
  words = word.split(/\W+/)
  words[0]
end

def titleize(sentence)
  little_words = %w(end over and the)
  sentence.capitalize.gsub(/(\w+)/) do |word|
    little_words.include?(word) ? word : word.capitalize
  end
end
