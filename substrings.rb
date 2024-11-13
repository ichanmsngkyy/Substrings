dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, substring)
  word = word.downcase
  result = Hash.new(0)

  substring.each do |sub|
    sub = sub.downcase
    match = word.scan(/#{sub}/).size
    if(match > 0)
      result[sub] = match
    end
  end

  result

end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)