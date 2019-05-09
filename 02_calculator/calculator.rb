#write your code here

def add(num1, num2)
  return num1 + num2
end

def subtract(num1, num2)
  return num1 - num2
end

def sum(array)
  sum = 0
  if array == []
    return sum=0
  else
    for a in array
      sum = sum.to_i + a.to_i
    end
  end
  return sum
end

def multiply(num1, num2)
  return num1 * num2 
end
