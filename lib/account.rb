class Account

  # responsible for handling the transactions: deposit, withdraw, balance.
  attr_reader :balance
  
  def initialize
    @balance = 0.00
  end
end
