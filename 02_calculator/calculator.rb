#write your code here
def add(value1, value2)
  value3 = value1 + value2
end

def subtract(value1, value2)
  value3 = value1 - value2
end

def sum(value1)
  value2 = 0
  value1.each do |i|
    value2 = value2 + i
  end
  value2
end

def multiply(value1)
  value2 = 1
  value1.each do |i|
    value2 = value2 * i
  end
  value2
end

def power(value1, value2)
  value2 = value2 - 1
  puts value2.to_s
  value3 = value1
  value2.times do
    value3 = value3 * value1
  end
  value3
end

def factorial(value1)
  value2 = value1
  value1 = value1 - 1
  while value1 > 0
    value2 = value2 * value1
    value1 = value1 - 1
  end
  value2
end
