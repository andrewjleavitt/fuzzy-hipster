
list = [0,1,2,3,4,5,6,7,8,9]
reversed = Array.new

def rev_list(list,reversed)
  return reversed unless list.length > 0
  reversed.push list.pop
  rev_list(list, reversed)
end

puts list
puts rev_list(list, reversed)