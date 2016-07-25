NUMBERS_TO_NAME = {
  100 => "one hundred",
  90 => "ninety",
  80 => "eighty",
  70 => "seventy",
  60 => "sixty",
  50 => "fifty",
  40 => "forty",
  30 => "thirty",
  20 => "twenty",
  19 => "nineteen",
  18 => "eighteen",
  17 => "seventeen",
  16 => "sixteen",
  15 => "fifteen",
  14 => "fourteen",
  13 => "thirteen",
  12 => "twelve",
  11 => "eleven",
  10 => "ten",
  9  => "nine",
  8  => "eight",
  7  => "seven",
  6  => "six",
  5  => "five",
  4  => "four",
  3  => "three",
  2  => "two",
  1  => "one"
}
def to_words(num)
	words ||= []
	if num < 20
		words << NUMBERS_TO_NAME[num]
	elsif num % 10 == 0 
		words << NUMBERS_TO_NAME[num]
	else 
		remainder = num % 10
		digit_one = num - remainder
		words << NUMBERS_TO_NAME[digit_one]
		
		words << NUMBERS_TO_NAME[remainder]
	end
	words.join("-").strip
	
end