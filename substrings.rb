
def substrings(string, dictionary)
    hash_slinging_slasher = {}
    string_array = string.split(" ")
    dictionary.each do |dict_word|
        string_array.each do |str_word|
            if str_word.downcase.include?(dict_word)
                if hash_slinging_slasher[dict_word]
                    hash_slinging_slasher[dict_word] += 1
                else 
                    hash_slinging_slasher[dict_word] = 1
                end
            end
        end
    end
    hash_slinging_slasher
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
below = substrings("below", dictionary)
p below
howdy = substrings("Howdy partner, sit down! How's it going?", dictionary)
p howdy

