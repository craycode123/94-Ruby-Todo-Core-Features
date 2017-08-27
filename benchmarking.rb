#Yields, to put it simply, allow the method you create to take and call blocks.
#The yield keyword specifically is the spot where the 'stuff' in the block will be performed.
def benchmark
  # Your benchmarking code goes here.
  start_time = Time.now
  yield
  end_time = Time.now
  running_time = end_time - start_time
end

def run
  long_string = "apple"*1000000
  running_time = benchmark { long_string.reverse }
  puts "string.reverse took #{running_time} seconds to run"
end
run
# Be careful, running this code will take a long while to run
# It's a loooong string. :)
# DO NOT run this code when submitting your code to check for challenge completion
