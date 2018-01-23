def echo(s)
	return s
end

def shout(s)
	return s.upcase
end

def repeat(*args)
	s = args[0]
	n = args[1]
	case args.size
	when 1
		return s + ' ' + s
	when 2
		repeat = s
		for i in 1..n-1
			repeat += ' ' + s
		end
		return repeat
	end
end

def start_of_word(s, start)
	return s[0..start-1]
end

def first_word(s)
	return s.split[0]
end

def titleize(s)
	words = s.split
	capitalized_words = ''
	little_words = ['and', 'over', 'the']
	words.each_with_index do |word, i|
		if (i == 0 and little_words.include? word)
			capitalized_words += (word[0].upcase + word[1..word.length-1]) + ' '
		elsif (little_words.include? word)
			capitalized_words += word + ' '
		else
			capitalized_words += (word[0].upcase + word[1..word.length-1]) + ' '
		end
	end
	return capitalized_words[0..capitalized_words.length-2]
end