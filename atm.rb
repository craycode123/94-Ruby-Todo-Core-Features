# Start coding here.
account_bal = 10
input = ARGV
if input[0] == 'add'
  account_bal += input[1].to_i
elsif input[0] == 'withdraw'
  account_bal -= input[1].to_i
elsif input[0] == 'check'
  account_bal
else
  raise "Invalid function"
end

puts "Your balance is now #{account_bal} dollars."
