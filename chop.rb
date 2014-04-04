def gen_list(count)
  list = Array.new
  count.times do |x|
    list.push x
  end
  list
end

def chop(target,sorted_array,count)
  cursor = (sorted_array.length/2).floor
  puts "searching for " + target.to_s + " in list of " + sorted_array.length.to_s + " items."
  puts "value of cursor is " + cursor.to_s
  puts "value of array at cursor is: " + sorted_array[cursor].to_s
  if target == sorted_array[cursor]
  	return "I'm done. I found " + target.to_s + ". It took me " + count.to_s + " steps."

  elsif target < sorted_array[cursor]
  	puts "target is less than cursor"
  	chop(target, sorted_array.slice(0...cursor), count+1)
  else
  	puts "target is greater than cursor"
  	chop(target, sorted_array.slice(cursor...sorted_array[-1]),count+1)
  end
end

t1 = Time.now
# processing...
t2 = Time.now
delta = t2 - t1
list = gen_list 100000000 # ~10 sec
#list = Array(0..100000000) # ~3 sec
t2 = Time.now
delta = t2 - t1

puts chop( 1 , list, 0)
#puts chop(list.sample, list, 0)
puts "Time to allocate " + delta.to_s
list = gen_list 1000000000
