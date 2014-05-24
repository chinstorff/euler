@dict = {
  0 => "",
  1 => "one",
  2 => "two",
  3 => "three",
  4 => "four",
  5 => "five",
  6 => "six",
  7 => "seven",
  8 => "eight",
  9 => "nine",

  10 => "ten",
  11 => "eleven",
  12 => "twelve",
  13 => "thirteen",
  14 => "fourteen",
  15 => "fifteen",
  16 => "sixteen",
  17 => "seventeen",
  18 => "eighteen",
  19 => "nineteen",

  20 => "twenty",
  30 => "thirty",
  40 => "forty",
  50 => "fifty",
  60 => "sixty",
  70 => "seventy",
  80 => "eighty",
  90 => "ninety",
}

def write_out num, ret = ""
  return num if num < 0
  return ret + @dict[num] if num < 20



  if num < 100
    return @dict[num] if num % 10 == 0
    return ret + (write_out num % 10, @dict[num-(num%10)] + "-")
  end
  
  if num < 1000
    return @dict[num] if num % 100 == 0
    return ret + (write_out num % 100, @dict[(num-(num%100))/100] + " hundred and ")

  end

  if num < 10000
    return @dict[num] if num % 100 == 0
    return ret + (write_out num % 1000, @dict[(num-(num%1000))/1000] + " thousand ")
  end
  

  return "fish"
end

def letters_only s
  ret = ""
  s.downcase.split("").each do |c|
    ret += c if c >= 'a' && c <= 'z'
  end

  return ret
end

puts write_out 200
#puts letters_only write_out 1000
