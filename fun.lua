--
double = function(n)
  return n * 2
end

function doubleTable(data, fun)
  local result = {}
  for i = 1, #data do
    result[i] = fun(data[i])
  end
  return result
end
result = doubleTable({2, 4, 5, 7}, double)

for i in pairs(result) do
  print(result[i])
end

function count()
  local i = 0
  return function() return i+1 end
end

print(count())
print(count())
