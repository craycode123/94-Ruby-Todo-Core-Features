# Start coding here.
input = ARGV

case input[1]
when '+'
  puts input[0].to_i + input[2].to_i
when '-'
  puts input[0].to_i - input[2].to_i
when '*'
  puts input[0].to_i * input[2].to_i
when '/'
  puts input[0].to_i / input[2].to_i
else
  raise "Invalid input"
end
