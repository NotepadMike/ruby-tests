def echo(say)
	"#{say}"
end

def shout(say)
	"#{say}".upcase
end

def repeat(say, times = 2)
	("#{say} " * times).strip
end

def start_of_word(say, num)
	"#{say}".split(//).first(num).join("").to_s
end

def first_word(say)
	"#{say}".split[0]
end

def titleize(say)
	lowercase_words = %w{a an the and but or for nor of over}
	"#{say}".split.each_with_index.map{|x, index| lowercase_words.include?(x) && index > 0 ? x : x.capitalize }.join(" ")
end
