
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substring_counter(sentence, dictionary)
  words = sentence.downcase.split
  words.reduce(Hash.new(0)) do |result, word|
      dictionary.each do |dict_word|
      result[dict_word] += 1 if word.include?(dict_word)
    end
    result
  end
end

puts substring_counter("BELOW THE TITANIC", dictionary)