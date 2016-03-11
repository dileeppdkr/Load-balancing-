=begin
ROR Challenge

Write a program that helps in balancing load among a set of servers. The input will be an array of integers, indicating number of units of load on each server. For each second, a loaded server can share its load with the neighbors one unit at a time. The output of the program should be the minimum time taken to balance the load. There can be multiple loaded servers in the input array, and they can share load in the same second, if needed.

Example: 0,0,10,0,0,0,0,0,0,0
There are 10 servers having load as below. Each server is placed next to each other. For each second, the server can share the load with the neighbors one at a time.

Time 0: 0,0,10,0,0,0,0,0,0,0
Time 1: 0,1,8,1,0,0,0,0,0,0
Time 2: 1,1,6,1,1,0,0,0,0,0
...
Time 7: 1,1,1,1,1,1,1,1,1,1

Here, the expected answer is 7 seconds, i.e. it took 7s to balance the load among servers.

So, sample input: 0,0,10,0,0,0,0,0,0,0
Output: 7 
=end


#change load balance if require
a = [0,0,10,0,0,0,0,0,0,0]

arr_index = a.each_index.max_by { |i| a[i] }
val = a[arr_index]
arr_length = a.size
arr_index1 = arr_index
arr_index2 = arr_index

load_balance_size = val/arr_length
i = 0
j = 0
	while val > load_balance_size
		i = i+1
		j = j+1
		#checking it balanced eqaly and repeat if still more load
		if arr_index1 == 0 && arr_index2 == arr_length-1
			arr_index1 = arr_index
			arr_index2 = arr_index
			i = 0
		end 
		#check and assign load into backward direction
		if  arr_index1 >0
			a[arr_index1-1] = a[arr_index1-1]+1
			arr_index1 = arr_index1 -1
			val = val-1
			a[arr_index] = val
		end
		#check and assign load into forward direction
		if arr_index2 < arr_length-1	
			a[arr_index2+1] = a[arr_index2+1]+1 if !a[arr_index2+1].nil?
			arr_index2 = arr_index2+1
			val = val-1
			a[arr_index] = val
		end
	#puts "Time "+j.to_s+"===>"+a.inspect.to_s
	 
	
	end
	puts "Output : Time "+j.to_s+"===>"+a.inspect.to_s
