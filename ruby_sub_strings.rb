dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, dictionary)
    results = Hash.new
    dictionary.map do |w|
        if word.downcase[w]
            results[w] = word.downcase.scan(w).length
        end
    end
end

substrings("Howdy partner, sit down! How's it going?", dictionary)