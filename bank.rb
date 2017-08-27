# Start coding here.
# Start coding here.
class BankAccount
  attr_accessor :type , :customer_name
  def initialize(name, transaction, acc_num)
    @customer_name = name
    @type = transaction
    @acct_number = acc_num
  end

  def to_s
    "#{@customer_name}: #{@type}# #{acct_number.gsub(/\d{3}-\d{2}(\d)-(\d{3})/, '***** \1\2')}"
  end

  private
  def acct_number
    @acct_number
  end
end

bank = BankAccount.new("Jane","Checking","123-456-789")
puts bank.to_s

str = "My account information is #{bank}"
puts str

bank.type = "Inquiring"
puts bank.to_s

puts bank.customer_name

bank.send(:acct_number)
