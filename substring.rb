require 'pry-byebug'

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


#counts the number of times each word is repeated if the word is found in the dictionary
def substrings(input, dictionary)
  match = Hash.new
  words = input.split(/\W+/)
  
  
  words.each do |word|
    dictionary.each do |item|
      if word.downcase.include?(item)
        if match[item.downcase]
          match[item.downcase] +=1
        else
          match[item.downcase] = 1
        end
      end
    end
  end
  puts match.sort.to_h
end


substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)