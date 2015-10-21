#it converts a word to Pig Latin
def pig_latin
	#get a word User
	puts "Dame una palabra: "
	word = gets.chomp
	#vowel variable is initialized
	vowel = "aeiou"
	#it evaluates vowels and converts words 'way'
	if vowel.include?(word[0])
		puts "#{word[1..-1]}#{word[0]}way"
	else 
		#Validation of words
		for i in 1..word.length
			#it evaluates consonants and converts words 'ay'
			if vowel.include?(word[i])
				puts "#{word[i..-1]}#{word[0]}ay"
				break
			else 
				puts "#{word[i+1..-1]}#{word[0]}#{word[i]}ay"
				break
			end
		end
	end
end

#test
pig_latin()

#it converts a string to Pig Latin
def pig_latin_word
	#get a sentence User
	puts "dame otra palabra: "
	word = gets.chomp
	#it converts sentence to into an Array
	list = word.split
	#vowel variable is initialized
	vowel = "aeiou"
	#list array is evaluated
	list.each { |word| 
		#it evaluates vowels and converts words 'way'
		if vowel.include?(word[0])
			puts "#{word[1..-1]}#{word[0]}way"
		else 
			#Validation of words
			for i in 1..word.length
				#it evaluates consonants and converts words 'ay'
				if vowel.include?(word[i])
					puts "#{word[i..-1]}#{word[0]}ay"
					break
				else 
					puts "#{word[i+1..-1]}#{word[0]}#{word[i]}ay"
					break
				end
			end
		end
	}
end

#test
pig_latin_word

