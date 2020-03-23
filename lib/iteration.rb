def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  joined = [ ]
  row_index = 0 
  while row_index < src.count do
      joined << "I love #{src[row_index][0]} and #{src[row_index][1]} on my pizza"
    row_index += 1
  end
  joined
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  greater = [ ]
  pairs_index = 0 
  while pairs_index < src.count do
    if src[pairs_index][0] < src[pairs_index][1]
      greater << src[pairs_index][1]
      pairs_index += 1
    else
      greater << src[pairs_index][0]
      pairs_index +=1 
    end
  end  
  greater
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
  number_pairs_traversed = 0 
  while number_pairs_traversed < src.count do 
    if number_pairs_traversed[0] %2 == 0 && number_pairs_traversed[1] %2 == 0
      total += number_pairs_traversed[0] + number_pairs_traversed[1]
      number_pairs_traversed += 1         
    else
      number_pairs_traversed += 1  
    end
  end
  total
end
