
def find_divisors n
  divisors = []

  (n / 2).times do |i|
    if n % (i + 1) == 0
      divisors.push (i + 1)
    end
  end

  return divisors
end

def sum_divisors n
  divisors = find_divisors n
  
  sum = 0
  divisors.each do |a|
    sum += a
  end

  return sum
end

def amicable? n
  s = sum_divisors n

  return s if n == sum_divisors(s) && n != s
  return false
end

def generate_amicable_pairs max
  pairs = []

  max.times do |i|
    o = amicable? i
    if o
      pairs.push [i, o] if i < o
    end
  end

  return pairs
end

pairs = generate_amicable_pairs 10000

sum = 0
pairs.each do |i|
  i.each do |j|
    sum += j
  end
end
puts sum

# 31626

