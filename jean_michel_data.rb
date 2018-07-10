dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
dictionnary = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]

def jean_michel_data(string, dictionary)
	occurence = {}
	dictionary.each { | word | occurence[word] = string.downcase.scan(word).count }
	puts occurence
end

def get_file_as_string(filename)
  data = ''
  f = File.open(filename, "r") 
  f.each_line do |line|
    data += line
  end
  return data
end

def get_file_as_word(filename)
	dico = []
  File.open(filename) do |f|
  loop do
    break if not line = f.gets
    dico << "#{line.to_s.chop}"
  end
end
  dico
end

# puts jean_michel_data(get_file_as_string("shakespeare.txt"), dictionnary)
 puts jean_michel_data(get_file_as_string("shakespeare.txt"), get_file_as_word("gros_mots.txt"))
# puts jean_michel_data("Howdy partner, sit down! How's it going?", dictionary)
