def gen_list(count)
  list = Array.new
  count.times do |x|
    list.push x
  end
  list
end


def chop(target,sorted_array)
  cursor = (sorted_array.length/2).floor
  puts sorted_array
  puts "searching for " + target.to_s + " in list of " + sorted_array.length.to_s + " items."
  puts "value of cursor is " + cursor.to_s
  puts "value of array at cursor is: " + sorted_array[cursor].to_s
 
  if target == sorted_array[cursor]
  	return "I'm done. I found " + target.to_s + "."
  
  elsif target < sorted_array[cursor]
  	puts "target is less than cursor"
  	chop(target, sorted_array.slice(0...cursor))
  
  else
  	puts "target is greater than cursor"
  	chop(target, sorted_array.slice(cursor...sorted_array[-1]))
  end

end

list = gen_list 100000

puts chop(list.sample, list)
