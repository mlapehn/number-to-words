# Here is a solution for numbers under 100.

NUMBER_WORD_MAPPER = {
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

def to_words num
  words ||= []
  if num < 20
    words << NUMBER_WORD_MAPPER[num]
  elsif num % 10 == 0
    words << NUMBER_WORD_MAPPER[num]
  else
    remainder = num % 10
    val = num - remainder
    words << to_words(val)
    words << to_words(remainder)
  end
  words.join(" ").strip
end


# tests

def assert
  raise "Incorrect, Sir." unless yield
end

assert { to_words(3) == "three" }
assert { to_words(48) == "forty eight" }
assert { to_words(72) == "seventy two" }
assert { to_words(19) == "nineteen" }
