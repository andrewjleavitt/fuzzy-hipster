def gen_list(count)
  list = Array.new
  count.times do |x|
    list.push x
  end
  list
end


def chop(target,sorted_array)
  puts "searching for " + target.to_s + " in list of " + sorted_array.length.to_s + " items."
  cursor = sorted_array[sorted_array.length/2]
  puts "cursor is " + cursor.to_s
  if target == cursor
  	return "I'm done. I found " + target.to_s + "."
  elsif target < cursor
  	puts "target is less than cursor"
  	chop(target, sorted_array.slice(0...cursor))
  elsif target > cursor
  	puts "target is greater than cursor"
  	chop(target, sorted_array.slice(cursor...sorted_array.last))
  else
  	return "I'm not sure if it is here"
  end

end

list = gen_list 100

puts chop(51, list)
# puts chop(list.sample, list)
