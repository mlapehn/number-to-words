def to_words(i)
	ones = {
		1 => 'one',
		2 => 'two',
		3 => 'three',
		4 => 'four',
		5 => 'five',
		6 => 'six',
		7 => 'seven',
		8 => 'eight',
		9 => 'nine'
	}

	teens = {
		11 => 'eleven',
		12 => 'twelve',
		13 => 'thirteen',
		14 => 'fourteen',
		15 => 'fifteen',
		16 => 'sixteen',
		17 => 'seventeen',
		18 => 'eighteen',
		19 => 'nineteen'		
	}

	tens = {
		'2' => 'twenty',
		'3' => 'thirty',
		'4' => 'forty',
		'5' => 'fifty',
		'6' => 'sixty',
		'7' => 'seventy',
		'8' => 'eighty',
		'9' => 'ninety'
	}

	if i.to_s.size == 1 
		ones[i]
	elsif i < 20
		teens[i]
	elsif i === 100
		'one hundred'
	else
		i_string = i.to_s
		ones_place = i_string[-1].to_i
		ones_place == 0 ? tens[i_string[0]] : "#{tens[i_string[0]]}-#{ones[ones_place]}"  
	end 
end
