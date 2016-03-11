# Load-balancing-
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
