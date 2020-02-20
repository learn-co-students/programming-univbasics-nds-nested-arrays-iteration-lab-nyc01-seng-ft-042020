def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  array1 = [];
  
  i = 0
while i < src.count do
   array1 << "I love #{src[i][0]} and #{src[i][1]} on my pizza"
  i += 1
end

array1
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays

great_pair = []
i = 0

while i < src.count do
    
    if src[i][0]> src[i][1]
      great_pair << src[i][0]
    else 
      great_pair << src[i][1]
    end
    
    i += 1
end
great_pair 
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!

total = 0
row_index = 0
while row_index < src.count do
  element_index = 0
  while element_index < src[row_index].count do
    
    if src[row_index][0] % 2 == 0 && src[row_index][1] % 2 == 0 
    total += src[row_index][element_index]
  end
  
  element_index += 1
  
  end
  
  row_index += 1
  
end

total

end
