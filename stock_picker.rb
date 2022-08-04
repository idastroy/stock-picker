stock_array = [17,3,6,9,15,8,6,1,10]

def stock_picker(array)
  buy = array.min()
  sell = array.max()
  result = [array.index(buy), array.index(sell)]
  
  array.each_with_index do |day, index|
    if result[0] > result[1]
      buy = array.sort[(index)]
      result = [array.index(buy), array.index(sell)]
      
      if result[0] > result[1]
      sell = array.sort[-(index + 1)]
      result = [array.index(buy), array.index(sell)]
      end

    end
  end
  result
end

puts stock_picker(stock_array)


