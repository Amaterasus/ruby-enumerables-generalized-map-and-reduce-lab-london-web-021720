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

def reduce(source, output = nil)
  index = 0
  if output && !source[0] == false
    output = 0
  end
  
  while index < source.length do
    output = yield(source[index], output)
    index += 1
  end
  output
end