def echo (words)
	words
end

def shout (words)
	words.upcase
end

def repeat (words,*times)
	total = ""
	if times.length == 1
		for i in 1..times[0]-1
			total += words + " "
		end
		total = total + words
		return total
	end
	words + " " + words

end

def start_of_word (word,count)
	word.slice(0,count)
end

def first_word (sentence)
	first = ""
	i=0
	while sentence[i]!=" "
		first = first + sentence[i].chr
		i=i+1
	end
	first
end

def titleize (sentence)
	array = sentence.split(' ')
	if array.length == 1
		title = array[0].capitalize
		return title
	end
	if array.length == 2
		title = array[0].capitalize + " " + array[1].capitalize
		return title
	end
	title =""
	for i in 0..array.length-1
		if i == 0
			title += array[i].capitalize + " "

		elsif i == array.length-1
			title += array[i].capitalize

		elsif array[i].length>=5
			title+=array[i].capitalize + " "
		else
			title+=array[i] + " "
		end


	end
	title
end 
