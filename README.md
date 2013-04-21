# KimquyAlgo

I created a simple ruby gem for sorting algorithms:
+ insertion sort
+ merge sort (this one still buggy need to be fixed)
+ quick sort
+ bubble sort
+ selection sort
+ heap sort
+ and more ...

## Example

		require 'kimquy_algo'
		require 'benchmark'

		arr = [20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1]
		puts Benchmark.measure { arr.insertion_sort }


		arr = [20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1]
		puts Benchmark.measure {arr.quicksort }


		arr = [20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1]
		puts Benchmark.measure {arr.bubble_sort}


		arr = [20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1]
		puts Benchmark.measure {arr.selection_sort}

	##Performance result
			0.000000   0.000000   0.000000 (  0.000120)
	  	0.000000   0.000000   0.000000 (  0.000038)   (quicksort won!)
	  	0.000000   0.000000   0.000000 (  0.000108)
	  	0.000000   0.000000   0.000000 (  0.000068)

## Installation

Add this line to your application's Gemfile:

    gem 'kimquy_algo'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install kimquy_algo

