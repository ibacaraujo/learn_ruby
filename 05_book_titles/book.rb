class Book
	attr_accessor :title

	def title=(title)
		title_words = title.split
		new_title = []
		conjunctions = ['and', 'or']
		prepositions = ['in', 'of']
		articles = ['the', 'a', 'an']
		title_words.each_with_index do |title_word, i|
			if i == 0 and (conjunctions.include? title_word or prepositions.include? title_word or articles.include? title_word)
				title_word = title_word[0].upcase + title_word[1..title_word.length-1]
				new_title.push(title_word)
				next
			end
			if conjunctions.include? title_word or prepositions.include? title_word or articles.include? title_word
				new_title.push(title_word)
				next
			end
			title_word = title_word[0].upcase + title_word[1..title_word.length-1]
			new_title.push(title_word)
		end
		@title = new_title.join(" ")
	end
end
