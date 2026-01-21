# implement a substrings method that takes a word as the first arguments
# then an array of valid substrings (dict) as the secondary argument
# returns a hash listing each substring case insensitive that was found in the original string
# along with the number of occurrences

def substrings(word, dictionary)
  base_word = word.downcase

  matches = {}

  dictionary.each do |word|
    count = base_word.scan(word).length
    matches[word] = count if count > 0
  end

  return matches
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
input_string = "Howdy partner, sit down! How's it going?"
puts substrings(input_string, dictionary)


=begin
{ "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
{ "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }

=end