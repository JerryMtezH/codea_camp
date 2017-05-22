def canonical(word)
  	arr = []
  	arr = word.split("")
  	arr.sort!
  	canonical_word=""
  	for i in arr
  		canonical_word = canonical_word.strip + i
  	end
  	return canonical_word
end
def are_anagrams(word1, word2)
  canonical(word1) == canonical(word2)
end
def anagrams_for(word3,word_array)
	anagram_words = []
	idx = 0
	for z in word_array
		if are_anagrams(word3,z) == true
			anagram_words[idx] = z
			idx += 1
		end
  	end
  	return anagram_words
end
p anagrams_for('amor',['amor', 'roma', 'verde', 'aroma', 'omar', 'juego', 'mora', 'ramo', 'armo', 'rana', 'maro'])