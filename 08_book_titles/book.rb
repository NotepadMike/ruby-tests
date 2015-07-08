class Book
	def title
		@title
	end
	
	def title=(title)
		lowercase_words = %w{a an the and but or for nor of over in}
		@title = "#{title}".split.each_with_index.map{|x, index| lowercase_words.include?(x) && index > 0 ? x : x.capitalize }.join(" ")
	end
end


