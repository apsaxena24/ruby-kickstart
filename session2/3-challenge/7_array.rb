# Given a sentence, return an array containing every other word.
# Punctuation is not part of the word unless it is a contraction.
# In order to not have to write an actual language parser, there won't be any punctuation too complex.
# There will be no "'" that is not part of a contraction.
# Assume each of these  charactsrs are not to be considered: ! @ $ # % ^ & * ( ) - = _ + [ ] : ; , . / < > ? \ |
# 
# Examples
# alternate_words("Lorem ipsum dolor sit amet.")  # => ["Lorem", "dolor", "amet"]
# alternate_words("Can't we all get along?")      # => ["Can't", "all", "along"]
# alternate_words("Elementary, my dear Watson!")  # => ["Elementary", "dear"]

# def alternate_words(arrstr)
# 	newarr = []
# 	arrstr.split(" ")
# 	arrstr.gsub ("!" , "").gsub ("@" , "").gsub ("$" , "").gsub ("#{}" , "").gsub ("%" , "").gsub ("^" , "").gsub ("&" , "").gsub ("*" , "").gsub ("(" , "").gsub (")" , "").gsub ("-" , "").gsub ("=" , "").gsub ("_" , "").gsub ("+/ < > ? \ |" , "").gsub ("[" , "").gsub ("]" , "").gsub (":" , "").gsub (";" , "").gsub ("," , "").gsub ("." , "").gsub (";" , "").gsub ("\ ", "").gsub ("<" , "").gsub(">" , "").gsub("?" , "").gsub("/" , "").gsub("|" , "")
# 	 newarr << arrstr.select_with_index { |i,ele| i%2 != 0}.map{ |ele| ele}
# 	 return newarr
# end

#alternate_words("Lorem ipsum dolor sit amet.")

# def alternate_words(arrstr)
# 	new_arr = []

# 	ignore_arr = '!@$#%^&*()-=_+[]:;,./<>?\\|'.split('')

# 	ignore_arr.each do |char|
# 		arrstr.gsub(char, " ")
# 	end

# 	arrstr = arrstr.split()
# 	print(arrstr)
# 	arrstr.each_with_index do |i, word|
# 		print arrstr[i]
# 		if i % 2 != 0
# 			new_arr << word
# 		end
# 	end

# 	new_arr
# end

#alternate_words("Lorem ipsum dolor sit amet.")

# 

# def alternate_words(arrstr)
# 	newarr = []
# 	ne = ""
# 	ignore_arr = '!@$#%^&*()-=_+[]:;,./<>?\\|'.split('')

# 	ignore_arr.each do |char|
# 	   arrstr = arrstr.gsub(char, '')
#     end
    
#     arrstr = arrstr.split(" ")
#     for i in (0..arrstr.length-1)
#     	if (i%2 == 0)
#     		newarr << arrstr[i]
#     	end
#     end
#     return newarr
# end


#print alternate_words("Lorem ipsum dolor sit amet.")


def alternate_words(sentence)
  # this will get better when we learn regular expressions :)
  '!@$#%^&*()-=_+[]:;,./<>?\\|'.split(//).each do |char|
    sentence = sentence.gsub(char, ' ')
  end
  words = sentence.split
  solution = []
  words.each_with_index do |word, index|
    solution << word if index.even?
  end
  solution
end




