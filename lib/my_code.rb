# Your Code Here

def map(source)
  output = []
  index = 0
  
  while index < source.length do
    output.push(yield(source[index]))
    index += 1
  end
  return output
end

def reduce(source, output = 0)
  index = 0

  while index < source.length do
    
    output = yield(source[index], output)
    
    index += 1
  end
  output
end