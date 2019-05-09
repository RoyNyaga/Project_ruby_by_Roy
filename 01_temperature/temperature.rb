#write your code here
def ftoc(num)
  num_to_float = num.to_f
  multiplication = 5*(num_to_float - 32)
  answer = multiplication/9
  return answer
end

def ctof(num)
  num_to_float = num.to_f
  addition = (9*num_to_float) + 160
  answer = addition/5
  return answer
end
